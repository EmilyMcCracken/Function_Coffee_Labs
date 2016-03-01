class WebpagesController < ApplicationController


  def index
    @webpages = Webpage.all
    render layout: "admin_layout"
  end


  def show
    @webpage = Webpage.find(params[:id])
  end


  def new
    @webpage = Webpage.new
    render layout: "admin_layout"
  end

 
  def edit
    @webpage = Webpage.find(params[:id])
    render layout: "admin_layout"
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
    @header = @webpage.headers.first
    @webpage.update(webpage_params)
        redirect_to edit_webpage_header_path(@webpage.id, @header.id)
  end



  def destroy
    @webpage.destroy
    redirect_to root_path
  end

  private

    # def webpage_params
    #   params.require(:webpage).permit(:name, :type)
    # end

    def webpage_params
      params.require(:webpage).permit(:name, :type)
    end

    # def webpage_params(type)
    #   case type
    #   when "webpage"
    #   params.require(:webpage).permit(:name, :type)
    #   when "Contentpage"
    #   params.require(:contentpage).permit(:name, :type)
    #   when "Picturepage"
    #   params.require(:picturepage).permit(:name, :type)
    #   when "Homepage"
    #   params.require(:homepage).permit(:name, :type)
    #   end
    # end

  end

