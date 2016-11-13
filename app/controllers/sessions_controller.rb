class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:usuario][:email].downcase)
    if usuario && usuario.authenticate(params[:usuario][:password])
      log_in usuario
      redirect_to root_path #posteriormente deve ir para /dashboard
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    reset_session # wipe out session and everything in it
    redirect_to login_path, notice: "Vocẽ não está mais logado."
  end
end