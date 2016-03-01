class AdminsController < ApplicationController
	# only accessible to admins/potentionally not existent 

	def index
		@admins = Admin.all
		render layout: "admin_layout"
	end

	def show
		@admin = Admin.find(params[:id])
		render layout: "admin_layout"
	end

	# only accessible to meg & ross (will give them route)
	def new
		@admin = Admin.new
		render layout: "admin_layout"
	end

	def create
		@admin = Admin.new(admin_params)
		render layout: "admin_layout"
		if @admin.save
	        session[:admin_id] = @admin.id
	        flash[:notice] = "Created New Admin for Function Coffee Labs"
	        redirect_to @admin
    	else
    		flash[:notice] = "Something went wrong, please try again"
    		redirect_to new_admin_path
    	end
	end

	# only accessible to an admin who is logged in
	def edit 
		render layout: "admin_layout"
	end

	def update
		render layout: "admin_layout"
	end

	# only accessible to an admin who is logged in 
	def destroy
	end

	private
    
    def admin_params
      params.require(:admin).permit(:username, :password, :pin)
    end

end
