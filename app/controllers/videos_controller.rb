# frozen_string_literal: true

class VideosController < ProtectedController
  before_action :set_video, only: [:show, :update, :destroy]

  # GET /videos
  def index
    @videos = current_user.videos.all
    # @videos = Video.all

    render json: @videos
  end

  # GET /videos/1
  def show
    render json: @video
  end

  # POST /videos
  def create
    @video = current_user.videos.build(video_params)
    # @video = Video.new(video_params)

    if @video.save
      render json: @video, status: :created
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videos/1
  def update
    if @video.update(video_params)
      render json: @video
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videos/1
  def destroy
    @video.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      # @video = Video.find(params[:id])
      @video = current_user.videos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def video_params
      params.require(:video).permit(:name, :date, :url)
    end
end
