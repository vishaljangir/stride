class NewsSecondsController < ApplicationController
  before_action :set_news_second, only: [:show, :edit, :update, :destroy]

  # GET /news_seconds
  # GET /news_seconds.json
  def index
    @news_seconds = NewsSecond.all
  end

  # GET /news_seconds/1
  # GET /news_seconds/1.json
  def show
  end

  # GET /news_seconds/new
  def new
    @news_second = NewsSecond.new
  end

  # GET /news_seconds/1/edit
  def edit
  end

  # POST /news_seconds
  # POST /news_seconds.json
  def create
    @news_second = NewsSecond.new(news_second_params)

    respond_to do |format|
      if @news_second.save
        format.html { redirect_to @news_second, notice: 'News second was successfully created.' }
        format.json { render :show, status: :created, location: @news_second }
      else
        format.html { render :new }
        format.json { render json: @news_second.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_seconds/1
  # PATCH/PUT /news_seconds/1.json
  def update
    respond_to do |format|
      if @news_second.update(news_second_params)
        format.html { redirect_to @news_second, notice: 'News second was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_second }
      else
        format.html { render :edit }
        format.json { render json: @news_second.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_seconds/1
  # DELETE /news_seconds/1.json
  def destroy
    @news_second.destroy
    respond_to do |format|
      format.html { redirect_to news_seconds_url, notice: 'News second was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_second
      @news_second = NewsSecond.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_second_params
      params.require(:news_second).permit(:heading, :description)
    end
end
