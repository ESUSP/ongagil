require "rails_helper"

RSpec.describe CustosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/custos").to route_to("custos#index")
    end

    it "routes to #new" do
      expect(:get => "/custos/new").to route_to("custos#new")
    end

    it "routes to #show" do
      expect(:get => "/custos/1").to route_to("custos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/custos/1/edit").to route_to("custos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/custos").to route_to("custos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/custos/1").to route_to("custos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/custos/1").to route_to("custos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/custos/1").to route_to("custos#destroy", :id => "1")
    end

  end
end
