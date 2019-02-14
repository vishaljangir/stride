class TrainingBlogsController < ApplicationController
  before_action :set_training_blog, only: [:show, :edit, :update, :destroy]

  # GET /training_blogs
  # GET /training_blogs.json
  def index
    @training_blogs = TrainingBlog.all
  end

  # GET /training_blogs/1
  # GET /training_blogs/1.json
  def show
  end

  # GET /training_blogs/new
  def new
    @training_blog = TrainingBlog.new
  end

  # GET /training_blogs/1/edit
  def edit
  end

  # POST /training_blogs
  # POST /training_blogs.json
  def create
    @training_blog = TrainingBlog.new(training_blog_params)

    respond_to do |format|
      if @training_blog.save
        format.html { redirect_to @training_blog, notice: 'Training blog was successfully created.' }
        format.json { render :show, status: :created, location: @training_blog }
      else
        format.html { render :new }
        format.json { render json: @training_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_blogs/1
  # PATCH/PUT /training_blogs/1.json
  def update
    respond_to do |format|
      if @training_blog.update(training_blog_params)
        format.html { redirect_to @training_blog, notice: 'Training blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_blog }
      else
        format.html { render :edit }
        format.json { render json: @training_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_blogs/1
  # DELETE /training_blogs/1.json
  def destroy
    @training_blog.destroy
    respond_to do |format|
      format.html { redirect_to training_blogs_url, notice: 'Training blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_blog
      @training_blog = TrainingBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_blog_params
      params.require(:training_blog).permit(:description, :name)
    end
end
