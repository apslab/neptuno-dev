require 'spec_helper'

describe "companies/index.html.haml" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :address => "Address",
        :cuit => "9.99"
      ),
      stub_model(Company,
        :name => "Name",
        :address => "Address",
        :cuit => "9.99"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
