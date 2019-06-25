module Minerva::Base::Workflows
  extend ActiveSupport::Concern

  included do
    before_action :set_workflow, only: [:show, :edit, :update, :destroy]
  end

  # GET /workflows
  def index
    @workflows = Minerva::Workflow.all
  end

  # GET /workflows/1
  def show
  end

  # GET /workflows/new
  def new
    @workflow = Minerva::Workflow.new
  end

  # GET /workflows/1/edit
  def edit
  end

  # POST /workflows
  def create
    @workflow = Minerva::Workflow.new(workflow_params)

    if @workflow.save
      redirect_to @workflow, notice: 'Workflow was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /workflows/1
  def update
    if @workflow.update(workflow_params)
      redirect_to @workflow, notice: 'Workflow was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /workflows/1
  def destroy
    @workflow.destroy
    redirect_to workflows_url, notice: 'Workflow was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow
      @workflow = Minerva::Workflow.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workflow_params
      params.require(:workflow).permit(:creator_id, :project_id, :task_list, :title, :ordered)
    end
end
