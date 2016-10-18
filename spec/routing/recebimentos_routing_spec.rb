require "rails_helper"

RSpec.describe RecebimentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recebimentos").to route_to("recebimentos#index")
    end

    it "routes to #new" do
      expect(:get => "/recebimentos/new").to route_to("recebimentos#new")
    end

    it "routes to #show" do
      expect(:get => "/recebimentos/1").to route_to("recebimentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recebimentos/1/edit").to route_to("recebimentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recebimentos").to route_to("recebimentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recebimentos/1").to route_to("recebimentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recebimentos/1").to route_to("recebimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recebimentos/1").to route_to("recebimentos#destroy", :id => "1")
    end

  end
end
