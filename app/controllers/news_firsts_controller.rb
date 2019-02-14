class NewsFirstsController < ApplicationController
  before_action :set_news_first, only: [:show, :edit, :update, :destroy]

  # GET /news_firsts
  # GET /news_firsts.json
  def index
    @news_firsts = NewsFirst.all
  end

  # GET /news_firsts/1
  # GET /news_firsts/1.json
  def show
  end

  # GET /news_firsts/new
  def new
    @news_first = NewsFirst.new
  end

  # GET /news_firsts/1/edit
  def edit
  end

  # POST /news_firsts
  # POST /news_firsts.json
  def create
    @news_first = NewsFirst.new(news_first_params)

    respond_to do |format|
      if @news_first.save
        format.html { redirect_to @news_first, notice: 'News first was successfully created.' }
        format.json { render :show, status: :created, location: @news_first }
      else
        format.html { render :new }
        format.json { render json: @news_first.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_firsts/1
  # PATCH/PUT /news_firsts/1.json
  def update
    respond_to do |format|
      if @news_first.update(news_first_params)
        format.html { redirect_to @news_first, notice: 'News first was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_first }
      else
        format.html { render :edit }
        format.json { render json: @news_first.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_firsts/1
  # DELETE /news_firsts/1.json
  def destroy
    @news_first.destroy
    respond_to do |format|
      format.html { redirect_to news_firsts_url, notice: 'News first was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_first
      @news_first = NewsFirst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_first_params
      params.require(:news_first).permit(:heading, :description)
    end
end
