class CampaignTemplatesController < ApplicationController
  before_action :set_campaign_template, only: [:show, :edit, :update, :destroy]

  # GET /campaign_templates
  # GET /campaign_templates.json
  def index
    @campaign_templates = CampaignTemplate.all
  end

  # GET /campaign_templates/1
  # GET /campaign_templates/1.json
  def show
  end

  # GET /campaign_templates/new
  def new
    @campaign_template = CampaignTemplate.new
  end

  # GET /campaign_templates/1/edit
  def edit
  end

  # POST /campaign_templates
  # POST /campaign_templates.json
  def create
    @campaign_template = CampaignTemplate.new(campaign_template_params)

    respond_to do |format|
      if @campaign_template.save
        format.html { redirect_to @campaign_template, notice: 'Campaign template was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_template }
      else
        format.html { render :new }
        format.json { render json: @campaign_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_templates/1
  # PATCH/PUT /campaign_templates/1.json
  def update
    respond_to do |format|
      if @campaign_template.update(campaign_template_params)
        format.html { redirect_to @campaign_template, notice: 'Campaign template was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_template }
      else
        format.html { render :edit }
        format.json { render json: @campaign_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_templates/1
  # DELETE /campaign_templates/1.json
  def destroy
    @campaign_template.destroy
    respond_to do |format|
      format.html { redirect_to campaign_templates_url, notice: 'Campaign template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_template
      @campaign_template = CampaignTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_template_params
      params.require(:campaign_template).permit(:campaign_id, :crumb_template_id)
    end
end
