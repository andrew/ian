set :haml, {:format => :html5 }

get '/' do
  haml :index
end

get '/update' do
  @tweet = Twitter::Search.new.q("#puppet").fetch.first
  haml :tweet
end

get '/stylesheet.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end
