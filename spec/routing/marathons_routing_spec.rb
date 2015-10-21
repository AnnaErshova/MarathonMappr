require "rails_helper"

RSpec.describe MarathonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/marathons").to route_to("marathons#index")
    end

    it "routes to #new" do
      expect(:get => "/marathons/new").to route_to("marathons#new")
    end

    it "routes to #show" do
      expect(:get => "/marathons/1").to route_to("marathons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/marathons/1/edit").to route_to("marathons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/marathons").to route_to("marathons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/marathons/1").to route_to("marathons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/marathons/1").to route_to("marathons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/marathons/1").to route_to("marathons#destroy", :id => "1")
    end

  end
end
