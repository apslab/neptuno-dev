require 'spec_helper'

describe "companies/new.html.haml" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :address => "MyString",
      :cuit => "9.99"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_address", :name => "company[address]"
      assert_select "input#company_cuit", :name => "company[cuit]"
    end
  end
end
