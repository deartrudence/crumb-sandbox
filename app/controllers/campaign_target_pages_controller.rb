class CampaignTargetPagesController < ApplicationController
  before_action :set_campaign_target_page, only: [:show, :edit, :update, :destroy]

  # GET /campaign_target_pages
  # GET /campaign_target_pages.json
  def index
    @campaign_target_pages = CampaignTargetPage.all
  end

  # GET /campaign_target_pages/1
  # GET /campaign_target_pages/1.json
  def show
  end

  # GET /campaign_target_pages/new
  def new
    @campaign_target_page = CampaignTargetPage.new
  end

  # GET /campaign_target_pages/1/edit
  def edit
  end

  # POST /campaign_target_pages
  # POST /campaign_target_pages.json
  def create
    @campaign_target_page = CampaignTargetPage.new(campaign_target_page_params)

    respond_to do |format|
      if @campaign_target_page.save
        format.html { redirect_to @campaign_target_page, notice: 'Campaign target page was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_target_page }
      else
        format.html { render :new }
        format.json { render json: @campaign_target_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_target_pages/1
  # PATCH/PUT /campaign_target_pages/1.json
  def update
    respond_to do |format|
      if @campaign_target_page.update(campaign_target_page_params)
        format.html { redirect_to @campaign_target_page, notice: 'Campaign target page was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_target_page }
      else
        format.html { render :edit }
        format.json { render json: @campaign_target_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_target_pages/1
  # DELETE /campaign_target_pages/1.json
  def destroy
    @campaign_target_page.destroy
    respond_to do |format|
      format.html { redirect_to campaign_target_pages_url, notice: 'Campaign target page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_target_page
      @campaign_target_page = CampaignTargetPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_target_page_params
      params.require(:campaign_target_page).permit(:campaign_id, :target_page_id)
    end
end
