class SessionsController < ApplicationController
  def new
  end

  def create
    username = params.permit(:name).values.first
    puts "****"
    puts username
    puts "****"
    if username.nil? || username == ''
      redirect_to sessions_new_path
    else
      session[:name] = username
      redirect_to "/"
    end

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
