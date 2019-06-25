module Minerva::Base::Interfaces
  extend ActiveSupport::Concern

  included do
    before_action :set_interface, only: [:show, :edit, :update, :destroy]
  end

  # GET /interfaces
  def index
    @interfaces = Minerva::Interface.all
  end

  # GET /interfaces/1
  def show
  end

  # GET /interfaces/new
  def new
    @interface = Minerva::Interface.new
  end

  # GET /interfaces/1/edit
  def edit
  end

  # POST /interfaces
  def create
    @interface = Minerva::Interface.new(interface_params)

    if @interface.save
      redirect_to @interface, notice: 'Interface was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /interfaces/1
  def update
    if @interface.update(interface_params)
      redirect_to @interface, notice: 'Interface was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /interfaces/1
  def destroy
    @interface.destroy
    redirect_to interfaces_url, notice: 'Interface was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interface
      @interface = Minerva::Interface.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interface_params
      params.require(:interface).permit(:title, :code_point)
    end
end
