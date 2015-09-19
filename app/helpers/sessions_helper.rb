module SessionsHelper
  #Logs in the user
  def log_in(user)
    session[:user_id] = user.id
  end
  #Returns or finds the current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end