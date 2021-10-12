module SessionsHelper

  # Login as a user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return the current logged in user if any
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Returns true/flase if logged in or not.
  def logged_in?
    !current_user.nil?
  end
  
end
