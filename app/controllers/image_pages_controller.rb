class ImagePagesController < ApplicationController

  def index
    @image_pages = ImagePage.all
  end

  def show
    @image_page = ImagePage.find(params[:id])
  end

  def new
    @image_page = ImagePage.new
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def edit
    @image_page = ImagePage.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def create
    @image_page = ImagePage.new(image_page_params)
    @webpage = Webpage.find(params[:webpage_id])
    @image_page.save
    redirect_to webpage_path(@webpage.id) 
  end

  def update
    @image_page = ImagePage.new(image_page_params)
    @webpage = Webpage.find(params[:webpage_id])
    @image_page.update(image_page_params)
    redirect_to webpage_path(@webpage.id)
  end

  def destroy
    @image_page.destroy
    redirect_to root_path
  end

  private
    def image_page_params
      params.require(:image_page).permit(:webpage_id, :image_id)
    end
end
