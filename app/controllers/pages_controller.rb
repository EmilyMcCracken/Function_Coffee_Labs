class PagesController < ApplicationController

	def show
		@posts = Post.all
    	render template: "pages/#{params[:page]}"
  	end

end
