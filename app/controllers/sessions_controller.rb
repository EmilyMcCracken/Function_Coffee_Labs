class SessionsController < ApplicationController
	def new
	end

	def create
		@admin = Admin.where(username: params[:username]).first     
		 if @admin && @admin.authenticate(params[:password_digest])
			 session[:admin_id] = @admin.id
			 redirect_to @admin
			 flash[:notice] = "You've successfully logged in as an Admin"
		else
			flash[:notice] = "Please try again"
			redirect_to login_path
		end
	end

	def destroy
		if current_admin
			session[:admin_id] = nil
			# session.clear
			flash[:notice] = "You've logged out as an Admin"
			redirect_to root_path
		end
	end



end
