class ImagePagesController < ApplicationController
  before_action :set_image_page, only: [:show, :edit, :update, :destroy]

  # GET /image_pages
  # GET /image_pages.json
  def index
    @image_pages = ImagePage.all
  end

  # GET /image_pages/1
  # GET /image_pages/1.json
  def show
  end

  # GET /image_pages/new
  def new
    @image_page = ImagePage.new
  end

  # GET /image_pages/1/edit
  def edit
  end

  # POST /image_pages
  # POST /image_pages.json
  def create
    @image_page = ImagePage.new(image_page_params)

    respond_to do |format|
      if @image_page.save
        format.html { redirect_to @image_page, notice: 'Image page was successfully created.' }
        format.json { render :show, status: :created, location: @image_page }
      else
        format.html { render :new }
        format.json { render json: @image_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_pages/1
  # PATCH/PUT /image_pages/1.json
  def update
    respond_to do |format|
      if @image_page.update(image_page_params)
        format.html { redirect_to @image_page, notice: 'Image page was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_page }
      else
        format.html { render :edit }
        format.json { render json: @image_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_pages/1
  # DELETE /image_pages/1.json
  def destroy
    @image_page.destroy
    respond_to do |format|
      format.html { redirect_to image_pages_url, notice: 'Image page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_page
      @image_page = ImagePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_page_params
      params.require(:image_page).permit(:webpage_id, :image_id)
    end
end
