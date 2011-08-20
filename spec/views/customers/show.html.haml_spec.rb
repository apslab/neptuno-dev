require 'spec_helper'

describe "customers/show.html.haml" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :address => "Address",
      :cuit => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
