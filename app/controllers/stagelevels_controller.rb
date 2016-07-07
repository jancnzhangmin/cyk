class StagelevelsController < ApplicationController
  before_action :set_stagelevel, only: [:show, :edit, :update, :destroy]

  # GET /stagelevels
  # GET /stagelevels.json
  def index
    @stagelevels = Stagelevel.all
  end

  # GET /stagelevels/1
  # GET /stagelevels/1.json
  def show
  end

  # GET /stagelevels/new
  def new
    @stagelevel = Stagelevel.new
  end

  # GET /stagelevels/1/edit
  def edit
  end

  # POST /stagelevels
  # POST /stagelevels.json
  def create
    @stagelevel = Stagelevel.new(stagelevel_params)

    respond_to do |format|
      if @stagelevel.save
        format.html { redirect_to @stagelevel, notice: 'Stagelevel was successfully created.' }
        format.json { render :show, status: :created, location: @stagelevel }
      else
        format.html { render :new }
        format.json { render json: @stagelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stagelevels/1
  # PATCH/PUT /stagelevels/1.json
  def update
    respond_to do |format|
      if @stagelevel.update(stagelevel_params)
        format.html { redirect_to @stagelevel, notice: 'Stagelevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @stagelevel }
      else
        format.html { render :edit }
        format.json { render json: @stagelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stagelevels/1
  # DELETE /stagelevels/1.json
  def destroy
    @stagelevel.destroy
    respond_to do |format|
      format.html { redirect_to stagelevels_url, notice: 'Stagelevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stagelevel
      @stagelevel = Stagelevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stagelevel_params
      params.require(:stagelevel).permit(:order, :ammount, :rate)
    end
end
