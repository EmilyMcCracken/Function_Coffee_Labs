class PagesController < ApplicationController
	
	def show
    render template: "pages/#{params[:page]}"
  	end

  	def edit_about
  	end

  	def update_about
  	end
  	
end
