require 'sinatra'
require 'sysrandom/securerandom' if development?
require 'sinatra/reloader'       if development?

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_KEY']
  set :session_secret, SecureRandom.hex(64) if development?
  set :sessions, expire_after: 2_592_000
end

get '/' do
  erb :index
end

post '/' do
  session[:active_game]
  redirect params[:role]
end

get '/codebreaker' do
  session[:active_game]
  erb :game
end
