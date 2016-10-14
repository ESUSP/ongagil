module SessionsHelper

  # Logs in the given user.
  def log_in(usuario)
    session[:id] = usuario.id
  end
end