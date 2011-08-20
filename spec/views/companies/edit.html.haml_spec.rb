require 'spec_helper'

describe "companies/edit.html.haml" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :address => "MyString",
      :cuit => "9.99"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_address", :name => "company[address]"
      assert_select "input#company_cuit", :name => "company[cuit]"
    end
  end
end
