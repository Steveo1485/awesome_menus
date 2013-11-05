var Menu = {
  init : function(){
    $('.form-create-menu').on('ajax:success', this.appendMenu)
    // $('.form-create-menu').on('submit', this.getMenuName)
  },

  // getMenuName : function(e){
  //   e.preventDefault();
  //   var $menuForm = $(this)
  //   $.ajax({
  //     url: $menuForm.prop("action"),
  //     type: $menuForm.prop("method"),
  //     data: $menuForm.serialize()
  //   }).done(function(formCreateMenuData){
  //     Menu.appendMenu(formCreateMenuData.new_menu_name);
  //   });
  // },

  appendMenu : function(e, dataToAppend){
    $('.menu-list').append(dataToAppend.new_menu_name);
    $('#menu_name').val("")
  }
}


$(document).ready(function(){
  Menu.init();
})