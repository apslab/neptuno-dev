require 'spec_helper'

describe "consortia/edit.html.haml" do
  before(:each) do
    @consortium = assign(:consortium, stub_model(Consortium,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit consortium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consortia_path(@consortium), :method => "post" do
      assert_select "input#consortium_name", :name => "consortium[name]"
      assert_select "input#consortium_address", :name => "consortium[address]"
    end
  end
end
