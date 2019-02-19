class NewsLatestsController < ApplicationController
  before_action :set_news_latest, only: [:show, :edit, :update, :destroy]

  # GET /news_latests
  # GET /news_latests.json
  def index
    @news_latests = NewsLatest.all
  end

  # GET /news_latests/1
  # GET /news_latests/1.json
  def show
    render :partial => "layouts/404"
  end

  # GET /news_latests/new
  def new
    @news_latest = NewsLatest.new
  end

  # GET /news_latests/1/edit
  def edit
  end

  # POST /news_latests
  # POST /news_latests.json
  def create
    @news_latest = NewsLatest.new(news_latest_params)

    respond_to do |format|
      if @news_latest.save
        format.html { redirect_to action: "index", notice: 'News latest was successfully created.' }
        format.json { render :show, status: :created, location: @news_latest }
      else
        format.html { render :new }
        format.json { render json: @news_latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_latests/1
  # PATCH/PUT /news_latests/1.json
  def update
    respond_to do |format|
      if @news_latest.update(news_latest_params)
        format.html { redirect_to action: "index", notice: 'News latest was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_latest }
      else
        format.html { render :edit }
        format.json { render json: @news_latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_latests/1
  # DELETE /news_latests/1.json
  def destroy
    @news_latest.destroy
    respond_to do |format|
      format.html { redirect_to news_latests_url, notice: 'News latest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_latest
      @news_latest = NewsLatest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_latest_params
      params.require(:news_latest).permit(:image, :description, :name)
    end
end
