class FullpostsController < ApplicationController
  before_action :set_fullpost, only: [:show, :edit, :update, :destroy]

  # GET /fullposts
  # GET /fullposts.json
  def index
    @fullposts = Fullpost.all
  end

  # GET /fullposts/1
  # GET /fullposts/1.json
  def show
  end

  # GET /fullposts/new
  def new
    @fullpost = Fullpost.new
  end

  # GET /fullposts/1/edit
  def edit
  end

  # POST /fullposts
  # POST /fullposts.json
  def create
    @fullpost = Fullpost.new(fullpost_params)

    respond_to do |format|
      if @fullpost.save
        format.html { redirect_to @fullpost, notice: 'Fullpost was successfully created.' }
        format.json { render :show, status: :created, location: @fullpost }
      else
        format.html { render :new }
        format.json { render json: @fullpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fullposts/1
  # PATCH/PUT /fullposts/1.json
  def update
    respond_to do |format|
      if @fullpost.update(fullpost_params)
        format.html { redirect_to @fullpost, notice: 'Fullpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @fullpost }
      else
        format.html { render :edit }
        format.json { render json: @fullpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fullposts/1
  # DELETE /fullposts/1.json
  def destroy
    @fullpost.destroy
    respond_to do |format|
      format.html { redirect_to fullposts_url, notice: 'Fullpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fullpost
      @fullpost = Fullpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fullpost_params
      params.require(:fullpost).permit(:title, :body, :tag, :author)
    end
end
