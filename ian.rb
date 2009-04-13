require 'rubygems'
require 'sinatra'
require 'twitter'

set :haml, {:format => :html5 }

get '/' do
  haml :index
end

get '/update' do
  Twitter::Search.new('red dwarf').first['text']
end

get '/stylesheet.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end