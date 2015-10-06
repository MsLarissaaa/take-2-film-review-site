class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user_id
      redirect_to "/films/index"
    else
      @error_message =  "please enter info into both fields"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/films/index"
  end
end