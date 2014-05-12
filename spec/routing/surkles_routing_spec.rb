require "spec_helper"

describe SurklesController do
  describe "routing" do

    it "routes to #index" do
      get("/surkles").should route_to("surkles#index")
    end

    it "routes to #new" do
      get("/surkles/new").should route_to("surkles#new")
    end

    it "routes to #show" do
      get("/surkles/1").should route_to("surkles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surkles/1/edit").should route_to("surkles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surkles").should route_to("surkles#create")
    end

    it "routes to #update" do
      put("/surkles/1").should route_to("surkles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surkles/1").should route_to("surkles#destroy", :id => "1")
    end

  end
end
