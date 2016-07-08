class SidesController < ApplicationController

  require "open-uri"
  require 'json'

  def index
    redirect_to 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx685f96097b4c5877&redirect_uri=http://www.cloudtimesoft.com/sides/getcode&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect'
  end

  def getcode
    @code = params[:code]
    @userinfo = nil
    @response =nil
    begin
      open('https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx685f96097b4c5877&secret=89a4867cc23380cc5c6197d809f87ffe&code='+@code+'&grant_type=authorization_code') do |http|
        @response=http.read

      end
    end

    if @response
      accesstoken = @response[0]
      #accesstoken = JSON.parse(@response[:accesstoken])
      openid = @response[1]
      #openid = JSON.parse(@response[:openid])
      begin
        open('https://api.weixin.qq.com/sns/userinfo?access_token='+accesstoken+'&openid='+openid+'&lang=zh_CN') do |http|
          @userinfo=http.read
        end
      end
    end


    #redirect_to 'https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx685f96097b4c5877&secret=89a4867cc23380cc5c6197d809f87ffe&code='+@code+'&grant_type=authorization_code'
  end

end
