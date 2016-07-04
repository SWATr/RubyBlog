class ApplicationController < ActionController::Base
 before_filter :authorize
  before_action do  
     resource = controller_name.singularize.to_sym
     method = "#{resource}_params"
     params[resource] &&= send(method) if respond_to?(method, true)
  end

 protected

 def authorize
 unless User.find_by_id(session[:user_id])
	redirect_to login_url, notice: "Please log in"
 end
 end

end
