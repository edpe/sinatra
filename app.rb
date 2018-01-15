require 'sinatra'
require 'shotgun'
# shotgun app.rb -p 4567



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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking", "Captain Badgerface"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
