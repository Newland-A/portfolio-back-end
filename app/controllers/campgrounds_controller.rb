class CampgroundsController < ApplicationController
  before_action :set_campground, only: [:show, :update, :destroy]

  # GET /campgrounds
  # GET /campgrounds.json
  def index
    @campgrounds = Campground.all

    render json: @campgrounds.as_json(include: {reviews: {only: [:id, :title, :description, :score]}})
  end

  # GET /campgrounds/1
  # GET /campgrounds/1.json
  def show
    render json: @campground.as_json(include: {reviews: {only: [:id, :title, :description, :score]}})
  end

  # # GET /campgrounds/new
  # def new
  #   @campground = Campground.new
  # end

  # # GET /campgrounds/1/edit
  # def edit
  # end

  # POST /campgrounds
  # POST /campgrounds.json
  def create
    @campground = Campground.new(campground_params)

    if @campground.save
      render json: @campground, status: :created, location: @campground
    else
      render json: @campground.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campgrounds/1
  # PATCH/PUT /campgrounds/1.json
  def update
    if @campground.update(campground_params)
      render json: @campground
    else
      render json: @campground.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campgrounds/1
  # DELETE /campgrounds/1.json
  def destroy
    @campground.destroy
    # respond_to do |format|
    #   # format.html { redirect_to campgrounds_url, notice: 'Campground was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campground
      @campground = Campground.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campground_params
      params.require(:campground).permit(:name, :slug, :image_url, :avg_score, :hiking, :tent, :rv, :price, :hammocks, :description, reviews_attributes: [:id, :title, :description, :score])
    end
end
