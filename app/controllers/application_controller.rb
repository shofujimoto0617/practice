class ApplicationController < ActionController::Base

	protected
	def after_sign_in_path_for(resourse)
		users_path
	end

	def after_sign_out_path_for(resourse)
		top_path
	end

end
