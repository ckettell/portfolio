require 'sinatra/base'
require './lib/birthday_calculator.rb'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/calculator' do
    session[:user_name] = params[:user_name]
    session[:month_start] = params[:month_start]
    session[:day_start] = params[:day_start]
    redirect '/isit'
  end

  get '/isit' do
    @message = BirthdayCalulator.new(session[:day_start], session[:month_start], session[:user_name]).message
    erb :isit
  end

  run! if app_file == $0

end
