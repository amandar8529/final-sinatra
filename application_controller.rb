require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post "/result" do
    @user_feeling = params[:feelings]
    @user_choice = get_gif(@user_gif)
    erb :result
  end
  
  post "/index" do
  erb :index
  end
  
end