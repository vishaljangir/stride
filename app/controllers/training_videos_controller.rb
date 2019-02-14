class TrainingVideosController < ApplicationController
  before_action :set_training_video, only: [:show, :edit, :update, :destroy]

  # GET /training_videos
  # GET /training_videos.json
  def index
    @training_videos = TrainingVideo.all
  end

  # GET /training_videos/1
  # GET /training_videos/1.json
  def show
  end

  # GET /training_videos/new
  def new
    @training_video = TrainingVideo.new
  end

  # GET /training_videos/1/edit
  def edit
  end

  # POST /training_videos
  # POST /training_videos.json
  def create
    @training_video = TrainingVideo.new(training_video_params)

    respond_to do |format|
      if @training_video.save
        format.html { redirect_to @training_video, notice: 'Training video was successfully created.' }
        format.json { render :show, status: :created, location: @training_video }
      else
        format.html { render :new }
        format.json { render json: @training_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_videos/1
  # PATCH/PUT /training_videos/1.json
  def update
    respond_to do |format|
      if @training_video.update(training_video_params)
        format.html { redirect_to @training_video, notice: 'Training video was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_video }
      else
        format.html { render :edit }
        format.json { render json: @training_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_videos/1
  # DELETE /training_videos/1.json
  def destroy
    @training_video.destroy
    respond_to do |format|
      format.html { redirect_to training_videos_url, notice: 'Training video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_video
      @training_video = TrainingVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_video_params
      params.fetch(:training_video, {})
    end
end
