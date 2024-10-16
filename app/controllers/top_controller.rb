class TopController < ApplicationController
  def main
    if session[:login_uid]
      render "main"
    else
      render "login"
    end 
  end 
  
  def login
    user = User.find_by(uid: params[:uid])
    
    if user and BCrypt::Password.new(user.pass) == params[:pass] # Use `user.pass` for the stored password
      logger.debug "-" + 50
      logger.debug user
      session[:login_uid] = user.uid
      redirect_to top_main_path
    else
      render "login", status: 422  # Render the login page with an error status
    end
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end
