class CreditdetailsController < ApplicationController
  layout 'admin'
  before_action :set_creditdetail, only: [:show, :edit, :update, :destroy]

  # GET /creditdetails
  # GET /creditdetails.json
  def index
    @creditdetails = Creditdetail.all
  end

  # GET /creditdetails/1
  # GET /creditdetails/1.json
  def show
  end

  # GET /creditdetails/new
  def new
    @creditdetail = Creditdetail.new
  end

  # GET /creditdetails/1/edit
  def edit
  end

  # POST /creditdetails
  # POST /creditdetails.json
  def create
    @creditdetail = Creditdetail.new(creditdetail_params)

    respond_to do |format|
      if @creditdetail.save
        format.html { redirect_to creditdetails_path, notice: '征集创建成功.' }
        format.json { render :show, status: :created, location: @creditdetail }
      else
        format.html { render :new }
        format.json { render json: @creditdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creditdetails/1
  # PATCH/PUT /creditdetails/1.json
  def update
    respond_to do |format|
      if @creditdetail.update(creditdetail_params)
        format.html { redirect_to creditdetails_path, notice: '征集修改成功.' }
        format.json { render :show, status: :ok, location: @creditdetail }
      else
        format.html { render :edit }
        format.json { render json: @creditdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creditdetails/1
  # DELETE /creditdetails/1.json
  def destroy
    @creditdetail.destroy
    respond_to do |format|
      format.html { redirect_to creditdetails_url, notice: '成功删除' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creditdetail
      @creditdetail = Creditdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creditdetail_params
      params.require(:creditdetail).permit(:amount, :amountdate)
    end
end
