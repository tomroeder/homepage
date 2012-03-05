class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
    if user.nil?
      flash.now[:error] = 'Ungueltige E-mail/Passwort Kombination!'
      render 'new'
    else
      sign_in user
      redirect_to home_path
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
