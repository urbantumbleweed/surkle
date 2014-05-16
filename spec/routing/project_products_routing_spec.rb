require "spec_helper"

describe ProjectProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/project_products").should route_to("project_products#index")
    end

    it "routes to #new" do
      get("/project_products/new").should route_to("project_products#new")
    end

    it "routes to #show" do
      get("/project_products/1").should route_to("project_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_products/1/edit").should route_to("project_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_products").should route_to("project_products#create")
    end

    it "routes to #update" do
      put("/project_products/1").should route_to("project_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_products/1").should route_to("project_products#destroy", :id => "1")
    end

  end
end
