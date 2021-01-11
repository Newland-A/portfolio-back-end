class ReviewsController < ApplicationController
  before_action :set_review, only: [:show,:update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    render json: @review
  end

  # # GET /reviews/new
  # def new
  #   @review = Review.new
  # end

  # # GET /reviews/1/edit
  # def edit
  # end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    # respond_to do |format|
    #   format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:title, :description, :score)
    end
end
