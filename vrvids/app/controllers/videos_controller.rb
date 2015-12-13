class VideosController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  # GET /videos
  # GET /videos.json
  
  
  def index
    @videos = Video.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
    @video.user_id = current_user.id if current_user
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
   
    @video = Video.new(video_params)
    @video.user_id = current_user.id if current_user
    respond_to do |format|
      if @video.save
        UserMailer.video_confirmation(@video.id).deliver_later
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
   
    respond_to do |format|
      if @video.update(video_params)
        UserMailer.video_confirmation(@video.id).deliver_later
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:link_url, :user_id, :slug, :category_id, :description, :city, :state)
    end
end