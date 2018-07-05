class TargetPagesController < ApplicationController
  before_action :set_target_page, only: [:show, :edit, :update, :destroy]

  # GET /target_pages
  # GET /target_pages.json
  def index
    @target_pages = TargetPage.all
  end

  # GET /target_pages/1
  # GET /target_pages/1.json
  def show
  end

  # GET /target_pages/new
  def new
    @target_page = TargetPage.new
  end

  # GET /target_pages/1/edit
  def edit
  end

  # POST /target_pages
  # POST /target_pages.json
  def create
    @target_page = TargetPage.new(target_page_params)

    respond_to do |format|
      if @target_page.save
        format.html { redirect_to @target_page, notice: 'Target page was successfully created.' }
        format.json { render :show, status: :created, location: @target_page }
      else
        format.html { render :new }
        format.json { render json: @target_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /target_pages/1
  # PATCH/PUT /target_pages/1.json
  def update
    respond_to do |format|
      if @target_page.update(target_page_params)
        format.html { redirect_to @target_page, notice: 'Target page was successfully updated.' }
        format.json { render :show, status: :ok, location: @target_page }
      else
        format.html { render :edit }
        format.json { render json: @target_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /target_pages/1
  # DELETE /target_pages/1.json
  def destroy
    @target_page.destroy
    respond_to do |format|
      format.html { redirect_to target_pages_url, notice: 'Target page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target_page
      @target_page = TargetPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def target_page_params
      params.require(:target_page).permit(:campaign_id, :target_page_name)
    end
end
