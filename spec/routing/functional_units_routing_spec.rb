require "spec_helper"

describe FunctionalUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/functional_units").should route_to("functional_units#index")
    end

    it "routes to #new" do
      get("/functional_units/new").should route_to("functional_units#new")
    end

    it "routes to #show" do
      get("/functional_units/1").should route_to("functional_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/functional_units/1/edit").should route_to("functional_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/functional_units").should route_to("functional_units#create")
    end

    it "routes to #update" do
      put("/functional_units/1").should route_to("functional_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/functional_units/1").should route_to("functional_units#destroy", :id => "1")
    end

  end
end
