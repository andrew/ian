require 'rubygems'
require 'bundler'
Bundler.require

set :haml, {:format => :html5 }

get '/' do
  haml :index
end

get '/update' do
  speak
end

get '/stylesheet.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end

def speak
  Twitter::Search.new.q("#scotruby").fetch.first.text
end
