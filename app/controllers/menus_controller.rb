class MenusController < ApplicationController

  def index
    @menu = Menu.new
    @menu_list = Menu.all
  end

  def create
    # AJAX calls post#create (see $menuForm.prop('action'), ('method'), sends data from $menuForm.serialize()
    if @menu = Menu.create(params[:menu])
      render :json => { new_menu_name: render_to_string(partial: 'menu_created', locals: { menu_name: @menu.name } ) }
      # returns JSON object to .done as formCreateMenuData, which passes it into appendMenu()
      # appendMenu takes  ^ formCreateMenuData.new_menu_name
      #                             which ^ renders partial as string, with local vars       ^ local named in partial
    else
      redirect_to :root
    end
  end
end