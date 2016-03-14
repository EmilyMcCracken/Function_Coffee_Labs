class WebpagesController < ApplicationController


  def index
    @webpages = Webpage.all
    render layout: "admin_layout"
  end


  def show
    @webpage = Webpage.find(params[:id])
    @webpages = Webpage.all
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
    @webpage = Webpage.find(params[:id])
    @webpage.destroy
    redirect_to admin_path(@current_admin)
  end

  def publish
    @webpage = Webpage.find(params[:webpage_id])
    @webpage.update(publish: true)
    redirect_to webpages_path
  end
 
  def unpublish
    @webpage = Webpage.find(params[:webpage_id])
    @webpage.update(publish: false)
    redirect_to webpages_path
  end


  private

    # def webpage_params
    #   params.require(:webpage).permit(:name, :type)
    # end

    def webpage_params
      params.require(:webpage).permit(:name, :type, :publish)
    end

end

