class MemberlevelsController < ApplicationController
  before_action :set_memberlevel, only: [:show, :edit, :update, :destroy]

  # GET /memberlevels
  # GET /memberlevels.json
  def index
    @memberlevels = Memberlevel.all
  end

  # GET /memberlevels/1
  # GET /memberlevels/1.json
  def show
  end

  # GET /memberlevels/new
  def new
    @memberlevel = Memberlevel.new
  end

  # GET /memberlevels/1/edit
  def edit
  end

  # POST /memberlevels
  # POST /memberlevels.json
  def create
    @memberlevel = Memberlevel.new(memberlevel_params)

    respond_to do |format|
      if @memberlevel.save
        format.html { redirect_to @memberlevel, notice: 'Memberlevel was successfully created.' }
        format.json { render :show, status: :created, location: @memberlevel }
      else
        format.html { render :new }
        format.json { render json: @memberlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberlevels/1
  # PATCH/PUT /memberlevels/1.json
  def update
    respond_to do |format|
      if @memberlevel.update(memberlevel_params)
        format.html { redirect_to @memberlevel, notice: 'Memberlevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @memberlevel }
      else
        format.html { render :edit }
        format.json { render json: @memberlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberlevels/1
  # DELETE /memberlevels/1.json
  def destroy
    @memberlevel.destroy
    respond_to do |format|
      format.html { redirect_to memberlevels_url, notice: 'Memberlevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memberlevel
      @memberlevel = Memberlevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memberlevel_params
      params.require(:memberlevel).permit(:name, :quota)
    end
end
