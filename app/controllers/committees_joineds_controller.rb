class CommitteesJoinedsController < ApplicationController
  before_action :set_committees_joined, only: [:show, :edit, :update, :destroy]

  # GET /committees_joineds
  # GET /committees_joineds.json
  def index
    @committees_joineds = CommitteesJoined.all
  end

  # GET /committees_joineds/1
  # GET /committees_joineds/1.json
  def show
  end

  # GET /committees_joineds/new
  def new
    @committees_joined = CommitteesJoined.new
  end

  # GET /committees_joineds/1/edit
  def edit
  end

  # POST /committees_joineds
  # POST /committees_joineds.json
  def create
    @committees_joined = CommitteesJoined.new(committees_joined_params)

    respond_to do |format|
      if @committees_joined.save
        format.html { redirect_to @committees_joined, notice: 'Committees joined was successfully created.' }
        format.json { render :show, status: :created, location: @committees_joined }
      else
        format.html { render :new }
        format.json { render json: @committees_joined.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /committees_joineds/1
  # PATCH/PUT /committees_joineds/1.json
  def update
    respond_to do |format|
      if @committees_joined.update(committees_joined_params)
        format.html { redirect_to @committees_joined, notice: 'Committees joined was successfully updated.' }
        format.json { render :show, status: :ok, location: @committees_joined }
      else
        format.html { render :edit }
        format.json { render json: @committees_joined.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /committees_joineds/1
  # DELETE /committees_joineds/1.json
  def destroy
    @committees_joined.destroy
    respond_to do |format|
      format.html { redirect_to committees_joineds_url, notice: 'Committees joined was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_committees_joined
      @committees_joined = CommitteesJoined.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def committees_joined_params
      params.require(:committees_joined).permit(:user_id, :committee_id)
    end
end
