require 'spec_helper'

feature 'Menu' do

  scenario "Should appear on index once created" do
    visit(root_path)
    fill_in("menu_name", with: "Breakfast")
    click_button("Add Menu")
    expect(page).to have_content("Breakfast")
  end
end