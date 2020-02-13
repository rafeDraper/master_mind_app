# frozen_string_literal: true

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
  redirect params[:role]
end

get '/codebreaker' do
  session[:codebreaker]
  erb :codebreaker
end

get '/codemaker' do
  session[:codemaker]
  erb :codemaker
end
