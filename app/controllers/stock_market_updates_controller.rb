class StockMarketUpdatesController < ApplicationController
  before_action :set_stock_market_update, only: [:show, :edit, :update, :destroy]

  # GET /stock_market_updates
  # GET /stock_market_updates.json
  def index
    @stock_market_updates = StockMarketUpdate.all
  end

  # GET /stock_market_updates/1
  # GET /stock_market_updates/1.json
  def show
     render :partial => "layouts/404"
  end

  # GET /stock_market_updates/new
  def new
    @stock_market_update = StockMarketUpdate.new
  end

  # GET /stock_market_updates/1/edit
  def edit
  end

  # POST /stock_market_updates
  # POST /stock_market_updates.json
  def create
    @stock_market_update = StockMarketUpdate.new(stock_market_update_params)

    respond_to do |format|
      if @stock_market_update.save
        format.html { redirect_to action: "index", notice: 'Stock market update was successfully created.' }
        format.json { render :show, status: :created, location: @stock_market_update }
      else
        format.html { render :new }
        format.json { render json: @stock_market_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_market_updates/1
  # PATCH/PUT /stock_market_updates/1.json
  def update
    respond_to do |format|
      if @stock_market_update.update(stock_market_update_params)
        format.html { redirect_to action: "index", notice: 'Stock market update was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_market_update }
      else
        format.html { render :edit }
        format.json { render json: @stock_market_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_market_updates/1
  # DELETE /stock_market_updates/1.json
  def destroy
    @stock_market_update.destroy
    respond_to do |format|
      format.html { redirect_to stock_market_updates_url, notice: 'Stock market update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_market_update
      @stock_market_update = StockMarketUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_market_update_params
      params.require(:stock_market_update).permit(:image, :description)
    end
end
