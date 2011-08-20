require "spec_helper"

describe AdministrationsController do
  describe "routing" do

    it "routes to #index" do
      get("/administrations").should route_to("administrations#index")
    end

    it "routes to #new" do
      get("/administrations/new").should route_to("administrations#new")
    end

    it "routes to #show" do
      get("/administrations/1").should route_to("administrations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/administrations/1/edit").should route_to("administrations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/administrations").should route_to("administrations#create")
    end

    it "routes to #update" do
      put("/administrations/1").should route_to("administrations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/administrations/1").should route_to("administrations#destroy", :id => "1")
    end

  end
end
