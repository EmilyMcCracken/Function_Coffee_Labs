class ImagesController < ApplicationController


  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end


  def new
    @image = Image.new
  end


  def edit
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to @image
  end

  def update
    @image.update(image_params)
  end

  def destroy
    @image.destroy
    redirect_to images_url
  end

  private
    def image_params
      params.require(:image).permit(:name, :img)
    end
end
