require "spec_helper"

describe IconupsController do
  describe "routing" do

    it "routes to #index" do
      get("/iconups").should route_to("iconups#index")
    end

    it "routes to #new" do
      get("/iconups/new").should route_to("iconups#new")
    end

    it "routes to #show" do
      get("/iconups/1").should route_to("iconups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/iconups/1/edit").should route_to("iconups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/iconups").should route_to("iconups#create")
    end

    it "routes to #update" do
      put("/iconups/1").should route_to("iconups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/iconups/1").should route_to("iconups#destroy", :id => "1")
    end

  end
end
