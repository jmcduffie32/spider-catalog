class SpidersController < ApplicationController
  before_action :set_spider, only: [:show, :edit, :update, :destroy]

  # GET /spiders
  # GET /spiders.json
  def index
    @spiders = Spider.all
  end

  # GET /spiders/1
  # GET /spiders/1.json
  def show
  end

  # GET /spiders/new
  def new
    @spider = Spider.new
  end

  # GET /spiders/1/edit
  def edit
  end

  # POST /spiders
  # POST /spiders.json
  def create
    @spider = Spider.new(spider_params)

    respond_to do |format|
      if @spider.save
        format.html { redirect_to @spider, notice: 'Spider was successfully created.' }
        format.json { render :show, status: :created, location: @spider }
      else
        format.html { render :new }
        format.json { render json: @spider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spiders/1
  # PATCH/PUT /spiders/1.json
  def update
    respond_to do |format|
      if @spider.update(spider_params)
        format.html { redirect_to @spider, notice: 'Spider was successfully updated.' }
        format.json { render :show, status: :ok, location: @spider }
      else
        format.html { render :edit }
        format.json { render json: @spider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spiders/1
  # DELETE /spiders/1.json
  def destroy
    @spider.destroy
    respond_to do |format|
      format.html { redirect_to spiders_url, notice: 'Spider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spider
      @spider = Spider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spider_params
      params.require(:spider).permit(:species, :venemous, :spider_id, :description)
    end
end
