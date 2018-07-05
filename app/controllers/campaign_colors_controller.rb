class CampaignColorsController < ApplicationController
  before_action :set_campaign_color, only: [:show, :edit, :update, :destroy]

  # GET /campaign_colors
  # GET /campaign_colors.json
  def index
    @campaign_colors = CampaignColor.all
  end

  # GET /campaign_colors/1
  # GET /campaign_colors/1.json
  def show
  end

  # GET /campaign_colors/new
  def new
    @campaign_color = CampaignColor.new
  end

  # GET /campaign_colors/1/edit
  def edit
  end

  # POST /campaign_colors
  # POST /campaign_colors.json
  def create
    @campaign_color = CampaignColor.new(campaign_color_params)

    respond_to do |format|
      if @campaign_color.save
        format.html { redirect_to @campaign_color, notice: 'Campaign color was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_color }
      else
        format.html { render :new }
        format.json { render json: @campaign_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_colors/1
  # PATCH/PUT /campaign_colors/1.json
  def update
    respond_to do |format|
      if @campaign_color.update(campaign_color_params)
        format.html { redirect_to @campaign_color, notice: 'Campaign color was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_color }
      else
        format.html { render :edit }
        format.json { render json: @campaign_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_colors/1
  # DELETE /campaign_colors/1.json
  def destroy
    @campaign_color.destroy
    respond_to do |format|
      format.html { redirect_to campaign_colors_url, notice: 'Campaign color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_color
      @campaign_color = CampaignColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_color_params
      params.require(:campaign_color).permit(:campaign_id, :hex_value, :color_type)
    end
end
