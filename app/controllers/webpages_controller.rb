class WebpagesController < ApplicationController


  def index
    @webpages = Webpage.all
  end


  def show
    @webpage = Webpage.find(params[:id])
  end


  def new
    @webpage = Webpage.new
  end

 
  def edit
    @webpage = Webpage.find(params[:id])
  end

  def create
    @webpage = Webpage.new(webpage_params)
      if @webpage.save
        redirect_to new_webpage_header_path(@webpage.id)
      else
        redirect_to new_webpage_path
      end
  end


  def update
    @webpage = Webpage.find(params[:id])
    @webpage.update(webpage_params)
        redirect_to webpage_path @webpage
  end



  def destroy
    @webpage.destroy
    redirect_to root_path
  end

  private
    def webpage_params
      params.require(:webpage).permit(:name, :type)
    end
end
