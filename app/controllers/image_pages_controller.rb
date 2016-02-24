class ImagePagesController < ApplicationController

  def index
    @image_pages = ImagePage.all
  end

  def show
    @image_page = ImagePage.find(params[:id])
  end

  def new
    @image_page = ImagePage.new
  end

  def edit
  end

  def create
    @image_page = ImagePage.new(image_page_params)
      if @image_page.save
      redirect_to @image_page
      else
      end
  end

  def update
      if @image_page.update(image_page_params)
      redirect_to @image_page
      else
      end
  end

  def destroy
    @image_page.destroy
    redirect_to image_pages_url
  end

  private
    def image_page_params
      params.require(:image_page).permit(:webpage_id, :image_id)
    end
end
