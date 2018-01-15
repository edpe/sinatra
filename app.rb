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
  @names = ["Amigo", "Oscar", "Viking", "Captain Badgerface"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end
