class MarathonsController < ApplicationController
  before_action :set_marathon, only: [:show, :edit, :update, :destroy]

  # GET /marathons
  # GET /marathons.json
  def index
    # q is a hash of all the parameters ransack will pass in
    @q = Marathon.ransack(params[:q])
    @marathons = @q.result(distinct: true)
    # @q.build_condition if @q.conditions.empty?
    # @q.build_sort if @q.sorts.empty?
    # @marathons = Marathon.all
    @hash = Gmaps4rails.build_markers(@marathons) do |marathon, marker|
      marker.lat marathon.latitude
      marker.lng marathon.longitude
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @marathons }
    end
  end

  # GET /marathons/1
  # GET /marathons/1.json
  def show
  end

  # GET /marathons/new
  def new
    @marathon = Marathon.new
  end

  # GET /marathons/1/edit
  def edit
  end

  # POST /marathons
  # POST /marathons.json
  def create
    @marathon = Marathon.new(marathon_params)

    respond_to do |format|
      if @marathon.save
        format.html { redirect_to @marathon, notice: 'Marathon was successfully created.' }
        format.json { render :show, status: :created, location: @marathon }
      else
        format.html { render :new }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marathons/1
  # PATCH/PUT /marathons/1.json
  def update
    respond_to do |format|
      if @marathon.update(marathon_params)
        format.html { redirect_to @marathon, notice: 'Marathon was successfully updated.' }
        format.json { render :show, status: :ok, location: @marathon }
      else
        format.html { render :edit }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marathons/1
  # DELETE /marathons/1.json
  def destroy
    @marathon.destroy
    respond_to do |format|
      format.html { redirect_to marathons_url, notice: 'Marathon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marathon
      @marathon = Marathon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marathon_params
      params.require(:marathon).permit(:name, :city, :country, :date_description, :month, :year, :day, :kind, :latitude, :longitude, :event_date)
    end
end
