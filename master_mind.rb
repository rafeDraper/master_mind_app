# frozen_string_literal: true

require 'sinatra'
require 'sysrandom/securerandom' if development?
require 'sinatra/reloader'       if development?
require './models/mastermind_model'

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_KEY']
  set :session_secret, SecureRandom.hex(64) if development?
  set :sessions, expire_after: 2_592_000
end

get '/' do
  session.delete(:game)
  erb :index
end

post '/' do
  session[:game] = Mastermind.new(params[:player_role])
  redirect params[:player_role]
end

get '/codebreaker' do
  game = session[:game]
  erb :codebreaker
end

get '/codemaker' do
  game = session[:game]
  erb :codemaker
end
