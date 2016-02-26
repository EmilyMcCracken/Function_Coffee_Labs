class BodiesController < ApplicationController

  def index
    @bodies = Body.all
  end

  def show
    @body = Body.find(params[:id])
  end

  def new
    @body = Body.new
    @webpage = Webpage.find(params[:webpage_id])
  end

  def edit
    @body = Body.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
  end

  def create
    @body = Body.new(body_params)
    @webpage = Webpage.find(params[:webpage_id])
      if @body.save
        redirect_to root_path
      else
      end
  end

  def update
    @body = Body.find(params[:id])
    @webpage = Webpage.find(params[:webpage_id])
    @body.update(body_params)
    redirect_to admin_path(@current_admin.id)
  end

  def destroy
    @body.destroy
    redirect_to bodies_url
  end

  private
    def body_params
      params.require(:body).permit(:subheader, :paragraph, :webpage_id)
    end
end
