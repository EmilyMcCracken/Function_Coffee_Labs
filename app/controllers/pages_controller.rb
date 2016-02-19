class PagesController < ApplicationController
	
	def show
	@posts = Post.all
    render template: "pages/#{params[:page]}"
  	end

  	def edit_about
  	end

  	def update_about
  	end
  	
end
