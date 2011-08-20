require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FunctionalUnitsController do

  # This should return the minimal set of attributes required to create a valid
  # FunctionalUnit. As you add validations to FunctionalUnit, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all functional_units as @functional_units" do
      functional_unit = FunctionalUnit.create! valid_attributes
      get :index
      assigns(:functional_units).should eq([functional_unit])
    end
  end

  describe "GET show" do
    it "assigns the requested functional_unit as @functional_unit" do
      functional_unit = FunctionalUnit.create! valid_attributes
      get :show, :id => functional_unit.id.to_s
      assigns(:functional_unit).should eq(functional_unit)
    end
  end

  describe "GET new" do
    it "assigns a new functional_unit as @functional_unit" do
      get :new
      assigns(:functional_unit).should be_a_new(FunctionalUnit)
    end
  end

  describe "GET edit" do
    it "assigns the requested functional_unit as @functional_unit" do
      functional_unit = FunctionalUnit.create! valid_attributes
      get :edit, :id => functional_unit.id.to_s
      assigns(:functional_unit).should eq(functional_unit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FunctionalUnit" do
        expect {
          post :create, :functional_unit => valid_attributes
        }.to change(FunctionalUnit, :count).by(1)
      end

      it "assigns a newly created functional_unit as @functional_unit" do
        post :create, :functional_unit => valid_attributes
        assigns(:functional_unit).should be_a(FunctionalUnit)
        assigns(:functional_unit).should be_persisted
      end

      it "redirects to the created functional_unit" do
        post :create, :functional_unit => valid_attributes
        response.should redirect_to(FunctionalUnit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved functional_unit as @functional_unit" do
        # Trigger the behavior that occurs when invalid params are submitted
        FunctionalUnit.any_instance.stub(:save).and_return(false)
        post :create, :functional_unit => {}
        assigns(:functional_unit).should be_a_new(FunctionalUnit)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FunctionalUnit.any_instance.stub(:save).and_return(false)
        post :create, :functional_unit => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested functional_unit" do
        functional_unit = FunctionalUnit.create! valid_attributes
        # Assuming there are no other functional_units in the database, this
        # specifies that the FunctionalUnit created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FunctionalUnit.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => functional_unit.id, :functional_unit => {'these' => 'params'}
      end

      it "assigns the requested functional_unit as @functional_unit" do
        functional_unit = FunctionalUnit.create! valid_attributes
        put :update, :id => functional_unit.id, :functional_unit => valid_attributes
        assigns(:functional_unit).should eq(functional_unit)
      end

      it "redirects to the functional_unit" do
        functional_unit = FunctionalUnit.create! valid_attributes
        put :update, :id => functional_unit.id, :functional_unit => valid_attributes
        response.should redirect_to(functional_unit)
      end
    end

    describe "with invalid params" do
      it "assigns the functional_unit as @functional_unit" do
        functional_unit = FunctionalUnit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FunctionalUnit.any_instance.stub(:save).and_return(false)
        put :update, :id => functional_unit.id.to_s, :functional_unit => {}
        assigns(:functional_unit).should eq(functional_unit)
      end

      it "re-renders the 'edit' template" do
        functional_unit = FunctionalUnit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FunctionalUnit.any_instance.stub(:save).and_return(false)
        put :update, :id => functional_unit.id.to_s, :functional_unit => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested functional_unit" do
      functional_unit = FunctionalUnit.create! valid_attributes
      expect {
        delete :destroy, :id => functional_unit.id.to_s
      }.to change(FunctionalUnit, :count).by(-1)
    end

    it "redirects to the functional_units list" do
      functional_unit = FunctionalUnit.create! valid_attributes
      delete :destroy, :id => functional_unit.id.to_s
      response.should redirect_to(functional_units_url)
    end
  end

end
