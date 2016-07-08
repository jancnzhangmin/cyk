class ShowpeosController < ApplicationController
  def index

  end

  def show

  end

  def edit
    @peo = Peo.find(1)
  end

end
