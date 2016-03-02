class ImagesController < ApplicationController


  def index
    @images = Image.all
    render layout: "admin_layout"
  end

  def show
    @image = Image.find(params[:id])
  end


  def new
    @image = Image.new
    render layout: "admin_layout"
  end


  def edit
    render layout: "admin_layout"
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to images_path
  end

  def update
    @image.update(image_params)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private
    def image_params
      params.require(:image).permit(:name, :img)
    end
end
