class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:session].present?
      #Login normal
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    else
      #Login with facebook
      begin
        user = User.from_omniauth(request.env['omniauth.auth'])
        log_in user
        flash[:success] = "Welcome"
      rescue
        flash[:danger] = "Error"
      end
      redirect_to user
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end