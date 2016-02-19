class PostsController < ApplicationController
	# BLOG -- visible to public
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	# only accesible to an admin
	def new
		@post = Post.new
		respond_to do |format|
			format.html
			format.js
		end
	end

	def create
		@post = Post.new(post_params)
		@admin = current_admin
		@post.admin_id = @admin.id
    	@post.save 

  		redirect_to posts_path
	end

	# only accesible to an admin
	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
    	@admin = current_admin
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
