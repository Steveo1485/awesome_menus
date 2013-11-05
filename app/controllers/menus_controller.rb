class MenusController < ApplicationController

  def index
    @menu = Menu.new
    @menu_list = Menu.all
  end

  def create
    if @menu = Menu.create(params[:menu])
      redirect_to :root
    else
      redirect_to :root
    end
  end
end