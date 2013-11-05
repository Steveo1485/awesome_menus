require 'spec_helper'

describe MenusController do
  context "#index" do
    it "should render the index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  context "#create" do
    it "should create a menu with valid params" do
      expect {
        post :create, menu: { name: "Breakfast"}
      }.to change{Menu.count}.by(1)
    end

    it "should not create a menu with invalid params" do
      expect {
        post :create, menu: { name: ' ' }
      }.not_to change{Menu.count}
    end
  end
end