module SessionsHelper

  # Logs in the given user.
  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end
end