require "spec_helper"

describe IconsController do
  describe "routing" do

    it "routes to #index" do
      get("/icons").should route_to("icons#index")
    end

    it "routes to #new" do
      get("/icons/new").should route_to("icons#new")
    end

    it "routes to #show" do
      get("/icons/1").should route_to("icons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/icons/1/edit").should route_to("icons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/icons").should route_to("icons#create")
    end

    it "routes to #update" do
      put("/icons/1").should route_to("icons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/icons/1").should route_to("icons#destroy", :id => "1")
    end

  end
end
