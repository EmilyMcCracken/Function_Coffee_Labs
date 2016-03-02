class HeaderImagesController < ApplicationController
  def show
  	@header_image = HeaderImage.find(params[:id])
  end

  def new
  	@header_image = HeaderImage.new
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def edit
  	@header_image = HeaderImage.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def create
    @header_image = HeaderImage.new(header_image_params)
    @webpage = Webpage.find(params[:webpage_id])
    @header_image.save
    redirect_to new_webpage_image_page_path(@webpage.id) 
  end

  def update
    @header_image = HeaderImage.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    @image_page.update(header_image_params)
    redirect_to edit_webpage_image_page_path(@webpage.id, @image_page.id)
  end

   private
    def header_image_params
      params.require(:header_image).permit(:webpage_id, :image_id, :head_img)
    end

end
