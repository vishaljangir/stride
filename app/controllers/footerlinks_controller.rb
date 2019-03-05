class FooterlinksController < ApplicationController
  before_action :set_footerlink, only: [:show, :edit, :update, :destroy]
 
  # GET /footerlinks.json
  def index
    @footerlinks = Footerlink.all
  end

  # GET /footerlinks/1
  # GET /footerlinks/1.json
  def show
    render :partial => "layouts/404"
  end

  # GET /footerlinks/new
  def new
    @footerlink = Footerlink.new
  end

  # GET /footerlinks/1/edit
  def edit
  end

  # POST /footerlinks
  # POST /footerlinks.json
  def create
    @footerlink = Footerlink.new(footerlink_params)

    respond_to do |format|
      if @footerlink.save
        format.html { redirect_to action: "index", notice: 'Footerlink was successfully created.' }
        format.json { render :show, status: :created, location: @footerlink }
      else
        format.html { render :new }
        format.json { render json: @footerlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footerlinks/1
  # PATCH/PUT /footerlinks/1.json
  def update
    respond_to do |format|
      if @footerlink.update(footerlink_params)
        format.html { redirect_to action: "index", notice: 'Footerlink was successfully updated.' }
        format.json { render :show, status: :ok, location: @footerlink }
      else
        format.html { render :edit }
        format.json { render json: @footerlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footerlinks/1
  # DELETE /footerlinks/1.json
  def destroy
    @footerlink.destroy
    respond_to do |format|
      format.html { redirect_to footerlinks_url, notice: 'Footerlink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footerlink
      @footerlink = Footerlink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footerlink_params
      params.require(:footerlink).permit(:name)
    end
end
