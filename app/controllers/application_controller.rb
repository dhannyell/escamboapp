class ApplicationController < ActionController::Base
  
  #Pundit
  include Pundit

  #Manage Pundit Erros
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  #Set Layout
  layout :layout_by_resource

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected


  def user_not_authorized
    flash[:alert] = "Você não tem permissão para realizar essa ação"
    redirect_to(request.referrer || root_path)
  end

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "backoffice_devise"
    elsif devise_controller? && resource_name == :member
      "site_devise"
    else
      "application"
    end
  end

end
