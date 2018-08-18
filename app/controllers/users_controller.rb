class UsersController < ApplicationController
  def index
  end

  def result
      @count = session[:count]
      @info = session[:user_info]
  end

  def update

    if !session[:count]
      session[:count]=1

    else
      session[:count]+=1
      puts @count
    end

      session[:user_info]= params
      redirect_to '/result'

    end

  end
