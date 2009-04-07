require 'rubygems'
require 'sinatra'

get '/' do
  haml :index
end

get '/stylesheet.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end