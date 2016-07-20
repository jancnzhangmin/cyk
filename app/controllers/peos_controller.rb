class PeosController < ApplicationController
  layout 'admin'
  before_action :set_peo, only: [:show, :edit, :update, :destroy]

  # GET /peos
  # GET /peos.json
  def index
    @peos = Peo.all
  end

  # GET /peos/1
  # GET /peos/1.json
  def show
  end

  # GET /peos/new
  def new
    @peo = Peo.new
  end

  # GET /peos/1/edit
  def edit
  end

  # POST /peos
  # POST /peos.json
  def create
    @peo = Peo.new(peo_params)

    respond_to do |format|
      if @peo.save
        format.html { redirect_to peos_path, notice: '成功创建会员.' }
        format.json { render :show, status: :created, location: @peo }
      else
        format.html { render :new }
        format.json { render json: @peo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peos/1
  # PATCH/PUT /peos/1.json
  def update
    respond_to do |format|
      if @peo.update(peo_params)
        format.html { redirect_to peos_path, notice: '会员修改成功.' }
        format.json { render :show, status: :ok, location: @peo }
      else
        format.html { render :edit }
        format.json { render json: @peo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peos/1
  # DELETE /peos/1.json
  def destroy
    @peo.destroy
    respond_to do |format|
      format.html { redirect_to peos_url, notice: '删除会员.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peo
      @peo = Peo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peo_params
      params.require(:peo).permit(:memberlevel_id, :name, :credit, :sex, :tel, :bankcard, :bankaccount, :contact, :contactsex, :contacttel, :businesslicense, :qrcode, :upid, :status, :wechat, :identityfont, :identityback, :bankphoto, :businessphoto, :prospectus, :workprove)
    end
end
