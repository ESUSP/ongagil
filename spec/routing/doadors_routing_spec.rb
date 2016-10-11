require "rails_helper"

RSpec.describe DoadorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/doadors").to route_to("doadors#index")
    end

    it "routes to #new" do
      expect(:get => "/doadors/new").to route_to("doadors#new")
    end

    it "routes to #show" do
      expect(:get => "/doadors/1").to route_to("doadors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/doadors/1/edit").to route_to("doadors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/doadors").to route_to("doadors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/doadors/1").to route_to("doadors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/doadors/1").to route_to("doadors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/doadors/1").to route_to("doadors#destroy", :id => "1")
    end

  end
end
