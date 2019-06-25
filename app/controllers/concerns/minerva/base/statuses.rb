module Minerva::Base::Statuses
  extend ActiveSupport::Concern

  included do
    before_action :set_status, only: [:show, :edit, :update, :destroy]
  end

  # GET /statuses
  def index
    @statuses = Minerva::Status.all
  end

  # GET /statuses/1
  def show
  end

  # GET /statuses/new
  def new
    @status = Minerva::Status.new
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  def create
    @status = Minerva::Status.new(status_params)

    if @status.save
      redirect_to @status, notice: 'Status was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /statuses/1
  def update
    if @status.update(status_params)
      redirect_to @status, notice: 'Status was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /statuses/1
  def destroy
    @status.destroy
    redirect_to statuses_url, notice: 'Status was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Minerva::Status.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def status_params
      params.require(:status).permit(:title)
    end
end
