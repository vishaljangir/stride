class HeadersController < ApplicationController
  before_action :set_header, only: [:show, :edit, :update, :destroy]

  # GET /headers
  # GET /headers.json
  def index
    @headers = Header.all
  end

  # GET /headers/1
  # GET /headers/1.json
  def show
  end

  # GET /headers/new
  def new
    @header = Header.new
    @nav = @header.navs.new
          @nav.subnavs.new
  end

  # GET /headers/1/edit
  def edit
  end

  # POST /headers
  # POST /headers.json
  def create
    @header = Header.new(header_params)

    respond_to do |format|
      if @header.save
        format.html { redirect_to @header, notice: 'Header was successfully created.' }
        format.json { render :show, status: :created, location: @header }
      else
        format.html { render :new }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headers/1
  # PATCH/PUT /headers/1.json
  def update
    respond_to do |format|
      if @header.update(header_params)
        format.html { redirect_to @header, notice: 'Header was successfully updated.' }
        format.json { render :show, status: :ok, location: @header }
      else
        format.html { render :edit }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headers/1
  # DELETE /headers/1.json
  def destroy
    @header.destroy
    respond_to do |format|
      format.html { redirect_to headers_url, notice: 'Header was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header
      @header = Header.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def header_params
      params.require(:header).permit(:id, :image, :navs_attributes => [:id, :_destroy, :header_id, :name, :subnavs_attributes => [:id, :_destroy, :nav_id, :name]])
    end
end
