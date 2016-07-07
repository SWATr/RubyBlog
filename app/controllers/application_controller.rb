class ApplicationController < ActionController::Base
 before_filter :authorize
 before_filter :current_user
  before_action do  
     resource = controller_name.singularize.to_sym
     method = "#{resource}_params"
     params[resource] &&= send(method) if respond_to?(method, true)
  end




 protected

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

 def authorize
 unless User.find_by_id(session[:user_id])
	redirect_to login_url, notice: "Please log in"
 end
 end

end
