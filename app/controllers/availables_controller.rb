class AvailablesController < ApplicationController
  before_action :set_available, only: [:show, :edit, :update, :destroy]

  # GET /availables
  # GET /availables.json
  def index
    @availables = Available.all
  end

  # GET /availables/1
  # GET /availables/1.json
  def show
  end

  # GET /availables/new
  def new
    @available = Available.new
  end

  # GET /availables/1/edit
  def edit
  end

  # POST /availables
  # POST /availables.json
  def create
    shift_ids = params['available']['shift_id']
    u_id = params['available']['user_id'].to_i
    shift_ids.each do |sh_id|
      if sh_id != ''
        @available = Available.new(user_id: u_id, shift_id: sh_id)
        @available.save
      end
    end
  end

  # PATCH/PUT /availables/1
  # PATCH/PUT /availables/1.json
  def update
    respond_to do |format|
      if @available.update(available_params)
        format.html { redirect_to @available, notice: 'Available was successfully updated.' }
        format.json { render :show, status: :ok, location: @available }
      else
        format.html { render :edit }
        format.json { render json: @available.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availables/1
  # DELETE /availables/1.json
  def destroy
    @available.destroy
    respond_to do |format|
      format.html { redirect_to availables_url, notice: 'Available was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_available
    @available = Available.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def available_params
    params.require(:available).permit(:user_id, :shift_id)
  end
end
