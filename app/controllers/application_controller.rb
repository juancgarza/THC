class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def authenticate_user!
    redirect_to root_path, alert: "" if unauthenticated
  end

  private

  def unauthenticated
    session[:user_id].nil? 
  end
end
