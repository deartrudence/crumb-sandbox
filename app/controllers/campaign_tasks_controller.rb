class CampaignTasksController < ApplicationController
  before_action :set_campaign_task, only: [:show, :edit, :update, :destroy]

  # GET /campaign_tasks
  # GET /campaign_tasks.json
  def index
    @campaign_tasks = CampaignTask.all
  end

  # GET /campaign_tasks/1
  # GET /campaign_tasks/1.json
  def show
  end

  # GET /campaign_tasks/new
  def new
    @campaign_task = CampaignTask.new
  end

  # GET /campaign_tasks/1/edit
  def edit
  end

  # POST /campaign_tasks
  # POST /campaign_tasks.json
  def create
    @campaign_task = CampaignTask.new(campaign_task_params)

    respond_to do |format|
      if @campaign_task.save
        format.html { redirect_to @campaign_task, notice: 'Campaign task was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_task }
      else
        format.html { render :new }
        format.json { render json: @campaign_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_tasks/1
  # PATCH/PUT /campaign_tasks/1.json
  def update
    respond_to do |format|
      if @campaign_task.update(campaign_task_params)
        format.html { redirect_to @campaign_task, notice: 'Campaign task was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_task }
      else
        format.html { render :edit }
        format.json { render json: @campaign_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_tasks/1
  # DELETE /campaign_tasks/1.json
  def destroy
    @campaign_task.destroy
    respond_to do |format|
      format.html { redirect_to campaign_tasks_url, notice: 'Campaign task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_task
      @campaign_task = CampaignTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_task_params
      params.require(:campaign_task).permit(:campaign_id, :task_id, :incentive_type, :amount)
    end
end
