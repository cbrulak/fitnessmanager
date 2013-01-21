class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  protected

  
  helper_method :is_admin?

  def is_admin?
    if(current_user.present?)
      current_user.admin
    end
  end
end
