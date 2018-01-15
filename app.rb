require 'sinatra'
require 'shotgun'
# $ shotgun app.rb -p 4567



set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "The goat wears a smoking jacket"
end

get '/tomato' do
  "blah blah"
end

get '/cat' do
  "<div>
  <img src='http://bit.ly/1eze8aE' style='border: 3px dashed red'>
  </div>"
end
