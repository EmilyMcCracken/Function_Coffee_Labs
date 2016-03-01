class PagesController < ApplicationController
	layout "admin_layout"
	
	def show
		@posts = Post.all
    	render template: "pages/#{params[:page]}"
  	end

end
