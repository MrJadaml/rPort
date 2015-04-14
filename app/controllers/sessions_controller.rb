class SessionsController < ApplicationController

  def new
  end

  def create
    adam = Admin.find_by(user_name: params[:session][:user_name])
    if adam && adam.authenticate(params[:session][:password_digest])
      session[:user_id] = adam.id
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to :root
  end

end
