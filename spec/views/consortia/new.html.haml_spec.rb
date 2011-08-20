require 'spec_helper'

describe "consortia/new.html.haml" do
  before(:each) do
    assign(:consortium, stub_model(Consortium,
      :name => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new consortium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consortia_path, :method => "post" do
      assert_select "input#consortium_name", :name => "consortium[name]"
      assert_select "input#consortium_address", :name => "consortium[address]"
    end
  end
end
