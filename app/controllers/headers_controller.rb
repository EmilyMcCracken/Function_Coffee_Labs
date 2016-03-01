class HeadersController < ApplicationController

  def index
    @headers = Header.all
  end

  def show
    @header = Header.find(params[:id])
  end

  def new
    @header = Header.new
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def edit
    @header = Header.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    render layout: "admin_layout"
  end

  def create
    @header = Header.new(header_params)
    @webpage = Webpage.find(params[:webpage_id])
      if @header.save
        redirect_to new_webpage_body_path(@webpage.id)
      else
      end
  end

  def update
    @header = Header.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    @body = @webpage.bodies.first
    @header.update(header_params)
    redirect_to edit_webpage_body_path(@webpage.id, @body.id)
  end

  def destroy
    @header.destroy
    redirect_to headers_url
  end

  private
    def header_params
      params.require(:header).permit(:text, :webpage_id)
    end
end
