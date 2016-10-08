class SessionsController < ApplicationController

  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      log_in usuario
      redirect_to usuario
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end