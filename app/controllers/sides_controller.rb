class SidesController < ApplicationController

  def index
    redirect_to 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx685f96097b4c5877&redirect_uri=http://www.cloudtimesoft.com/sides/getcode&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect'
  end

  def getcode

  end

end
