class CrumbTemplatesController < ApplicationController
  before_action :set_crumb_template, only: [:show, :edit, :update, :destroy]

  # GET /crumb_templates
  # GET /crumb_templates.json
  def index
    @crumb_templates = CrumbTemplate.all
  end

  # GET /crumb_templates/1
  # GET /crumb_templates/1.json
  def show
  end

  # GET /crumb_templates/new
  def new
    @crumb_template = CrumbTemplate.new
  end

  # GET /crumb_templates/1/edit
  def edit
  end

  # POST /crumb_templates
  # POST /crumb_templates.json
  def create
    @crumb_template = CrumbTemplate.new(crumb_template_params)

    respond_to do |format|
      if @crumb_template.save
        format.html { redirect_to @crumb_template, notice: 'Crumb template was successfully created.' }
        format.json { render :show, status: :created, location: @crumb_template }
      else
        format.html { render :new }
        format.json { render json: @crumb_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crumb_templates/1
  # PATCH/PUT /crumb_templates/1.json
  def update
    respond_to do |format|
      if @crumb_template.update(crumb_template_params)
        format.html { redirect_to @crumb_template, notice: 'Crumb template was successfully updated.' }
        format.json { render :show, status: :ok, location: @crumb_template }
      else
        format.html { render :edit }
        format.json { render json: @crumb_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crumb_templates/1
  # DELETE /crumb_templates/1.json
  def destroy
    @crumb_template.destroy
    respond_to do |format|
      format.html { redirect_to crumb_templates_url, notice: 'Crumb template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crumb_template
      @crumb_template = CrumbTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crumb_template_params
      params.require(:crumb_template).permit(:name)
    end
end
