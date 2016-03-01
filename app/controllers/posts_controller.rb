class PostsController < ApplicationController
	# BLOG -- visible to public
	def index
		@posts = Post.all
		render layout: "admin_layout"
	end

	def show
		@post = Post.find(params[:id])
	end

	# only accesible to an admin
	def new
		@post = Post.new
		render layout: "admin_layout"
	end

	def create
		@post = Post.new(post_params)
		@admin = current_admin
		@post.admin_id = @admin.id
		render layout: "admin_layout"
    	@post.save 

  		redirect_to posts_path
	end

	# only accesible to an admin
	def edit
		@post = Post.find(params[:id])
		render layout: "admin_layout"
	end

	def update
		@post = Post.find(params[:id])
    	@admin = current_admin
    	render layout: "admin_layout"
        @post.update(post_params)
        redirect_to '/pages/list'
        flash[:notice] = "Profile Updated!"
	end

	# only accessible to an admin
	def destroy
	end

	private 

	def post_params
      params.require(:post).permit(:title, :body, :category, :admin_id)
    end

end
