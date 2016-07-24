class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]

  # GET /seminars
  # GET /seminars.json
  def index
    if params['event_id']
      @seminars = Seminar.where(event_id: params['event_id'])
    else
      @seminars = Seminar.all
    end
  end

  # GET /seminars/1
  # GET /seminars/1.json
  def show
  end

  # GET /seminars/new
  def new
    @event = Event.find(params[:event_id])
    @seminar = @event.seminars.new
  end

  # GET /seminars/1/edit
  def edit
  end

  # POST /seminars
  # POST /seminars.json
  def create
    @seminar = Seminar.new(seminar_params)

    respond_to do |format|
      if @seminar.save
        format.html { redirect_to @seminar, notice: 'Seminar was successfully created.' }
        format.json { render :show, status: :created, location: @seminar }
      else
        format.html { render :new }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminars/1
  # PATCH/PUT /seminars/1.json
  def update
    respond_to do |format|
      if @seminar.update(seminar_params)
        format.html { redirect_to @seminar, notice: 'Seminar was successfully updated.' }
        format.json { render :show, status: :ok, location: @seminar }
      else
        format.html { render :edit }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminars/1
  # DELETE /seminars/1.json
  def destroy
    @seminar.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Seminar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_seminar
    @seminar = Seminar.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def seminar_params
    params.require(:seminar).permit(:start, :end, :event_id, :name, :speaker, :description)
  end
end
