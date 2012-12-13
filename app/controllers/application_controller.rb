class ApplicationController < ActionController::Base
  protect_from_forgery
  def validate_user
    user_id = params[:user_id]
    redirect_to :root unless user_id == @current_user.try(:id)
  end
end
