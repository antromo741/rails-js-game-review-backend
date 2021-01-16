class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = current_user.games

    render json: GameSerializer.new(@games).serializable_hash[:data].map{|hash| hash[:attributes]}
  end

  # GET /games/1
  def show
    render json: {
      id: params[:id],
      reviewsAttributes:GameReviewSerializer.new(@game, include: [:reviews]).serializable_hash[:included].map{|hash| hash[:attributes]}
    }
  end

  # POST /games
  def create
    @game = current_user.games.build(game_params)

    if @game.save
      render json: GameSerializer.new(@game).serializable_hash[:data][:attributes], status: :created, locaton: @game
    else
      render json: @game.errors.full_messages.to_sentence, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:name)
    end
end
