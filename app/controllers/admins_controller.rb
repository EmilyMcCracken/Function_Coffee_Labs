class AdminsController < ApplicationController
	# only accessible to admins/potentionally not existent 
	def index
		@admins = Admin.all
	end

	def show
		@admin = Admin.find(params[:id])
	end

	# only accessible to meg & ross (will give them route)
	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(admin_params)

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
	end

	def update
	end

	# only accessible to an admin who is logged in 
	def destroy
	end

	private
    
    def admin_params
      params.require(:admin).permit(:username, :password, :pin)
    end

end
