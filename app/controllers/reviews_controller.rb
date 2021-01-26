class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  def index
    @reviews = current_user.reviews.all

    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    @review = current_user.reviews.build(review_params)

    if @review.save
      render json: ReviewSerializer.new(@review).serializable_hash[:data][:attributes], status: :created, location: @review
    else
      render json: @review.errors.full_messages.to_sentence, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: ReviewSerializer.new(@review).serializable_hash[:data][:attributes],  status: :ok
    else
      render json: @review.errors.full_messages.to_sentence, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
    render json: {id: @review.id}, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = current_user.reviews.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:name, :review_post, :user_id, :game_id)
    end
end
