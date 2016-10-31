class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
#-----------------------------------------------------
	def require_signin
		unless current_user
		session[:intended_url] = request.url
		redirect_to new_session_url, alert: "Bitte einlogin!"
		end
	end
#----------------------------------------------------
	def require_admin
		unless current_user_admin?
		redirect_to root_url, alert: "Erst als Admin anmelden!"
		end
	end
#----------------------------------------------------
	def current_user_admin?
		current_user && current_user.admin?
	end
	helper_method :current_user_admin?
#----------------------------------------------------
	def require_sifa
		unless current_user_sifa?
		redirect_to (:back), alert: "Keine Berechtigung als Sicherheitsfachkraft gefunden!"
		end
	end
#----------------------------------------------------
	def current_user_sifa?
		current_user && current_user.sifa?
	end
	helper_method :current_user_sifa?
#----------------------------------------------------
	def require_verantwortlich
		unless current_user_verantwortlich?
		redirect_to (:back), alert: "Keine Berechtigung als Verantwortlicher gefunden!"
		end
	end
#----------------------------------------------------
def current_user_verantwortlich?
		current_user && current_user.verantwortlich?
	end
	helper_method :current_user_verantwortlich?
end
#----------------------------------------------------
