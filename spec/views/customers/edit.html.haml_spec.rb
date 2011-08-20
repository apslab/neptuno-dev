require 'spec_helper'

describe "customers/edit.html.haml" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :address => "MyString",
      :cuit => "9.99"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_address", :name => "customer[address]"
      assert_select "input#customer_cuit", :name => "customer[cuit]"
    end
  end
end
