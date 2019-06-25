module Minerva::Base::States
  extend ActiveSupport::Concern

  included do
    before_action :set_state, only: [:show, :edit, :update, :destroy]
  end

  # GET /states
  def index
    @states = Minerva::State.all
  end

  # GET /states/1
  def show
  end

  # GET /states/new
  def new
    @state = Minerva::State.new
  end

  # GET /states/1/edit
  def edit
  end

  # POST /states
  def create
    @state = Minerva::State.new(state_params)

    if @state.save
      redirect_to @state, notice: 'State was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /states/1
  def update
    if @state.update(state_params)
      redirect_to @state, notice: 'State was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /states/1
  def destroy
    @state.destroy
    redirect_to states_url, notice: 'State was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = Minerva::State.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_params
      params.require(:state).permit(:creator_id, :user_id, :role_id, :work_id, :assignment_id, :status_id)
    end
end
