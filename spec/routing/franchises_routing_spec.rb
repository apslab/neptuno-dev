require "spec_helper"

describe FranchisesController do
  describe "routing" do

    it "routes to #index" do
      get("/franchises").should route_to("franchises#index")
    end

    it "routes to #new" do
      get("/franchises/new").should route_to("franchises#new")
    end

    it "routes to #show" do
      get("/franchises/1").should route_to("franchises#show", :id => "1")
    end

    it "routes to #edit" do
      get("/franchises/1/edit").should route_to("franchises#edit", :id => "1")
    end

    it "routes to #create" do
      post("/franchises").should route_to("franchises#create")
    end

    it "routes to #update" do
      put("/franchises/1").should route_to("franchises#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/franchises/1").should route_to("franchises#destroy", :id => "1")
    end

  end
end
