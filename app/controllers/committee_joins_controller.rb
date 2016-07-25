class CommitteeJoinsController < ApplicationController
  before_action :set_committee_join, only: [:show, :edit, :update, :destroy]

  # GET /committee_joins
  # GET /committee_joins.json
  def index
    @committee_joins = CommitteeJoin.all
  end

  # GET /committee_joins/1
  # GET /committee_joins/1.json
  def show
  end

  # GET /committee_joins/new
  def new
    @committee_join = CommitteeJoin.new
  end

  # GET /committee_joins/1/edit
  def edit
  end

  # POST /committee_joins
  # POST /committee_joins.json
  def create
    @committee_join = CommitteeJoin.new(committee_join_params)

    respond_to do |format|
      if @committee_join.save
        format.html { redirect_to @committee_join, notice: 'Committee join was successfully created.' }
        format.json { render :show, status: :created, location: @committee_join }
      else
        format.html { render :new }
        format.json { render json: @committee_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /committee_joins/1
  # PATCH/PUT /committee_joins/1.json
  def update
    respond_to do |format|
      if @committee_join.update(committee_join_params)
        format.html { redirect_to @committee_join, notice: 'Committee join was successfully updated.' }
        format.json { render :show, status: :ok, location: @committee_join }
      else
        format.html { render :edit }
        format.json { render json: @committee_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /committee_joins/1
  # DELETE /committee_joins/1.json
  def destroy
    @committee_join.destroy
    respond_to do |format|
      format.html { redirect_to committee_joins_url, notice: 'Committee join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_committee_join
      @committee_join = CommitteeJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def committee_join_params
      params.require(:committee_join).permit(:user_id, :committee_id)
    end
end
