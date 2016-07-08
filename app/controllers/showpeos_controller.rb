class ShowpeosController < ApplicationController
  def index

  end

  def show

  end

  def edit
    @peo = Peo.find(1)
  end


  def update
@peo.create(peo_params)
  end


  private
  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def peo_params
    params.require(:peo).permit(:memberlevel_id, :name, :credit, :sex, :tel, :bankcard, :bankaccount, :contact, :contactsex, :contacttel, :businesslicense, :qrcode, :upid, :status, :wechat, :identityfont, :identityback, :bankphoto, :businessphoto, :prospectus, :workprove)
  end


end
