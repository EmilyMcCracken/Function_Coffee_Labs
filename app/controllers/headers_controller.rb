class HeadersController < ApplicationController

  def index
    @headers = Header.all
  end

  def show
  end

  def new
    @header = Header.new
    @webpage = Webpage.find(params[:webpage_id])
  end

  def edit
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
      if @header.update(header_params)
        redirect_to @header
      else
      end
  end

  def destroy
    @header.destroy
    redirect_to headers_url
    end
  end

  private
    def header_params
      params.require(:header).permit(:text, :webpage_id)
    end
end
