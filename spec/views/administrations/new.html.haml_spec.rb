require 'spec_helper'

describe "administrations/new.html.haml" do
  before(:each) do
    assign(:administration, stub_model(Administration,
      :name => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new administration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => administrations_path, :method => "post" do
      assert_select "input#administration_name", :name => "administration[name]"
      assert_select "input#administration_address", :name => "administration[address]"
    end
  end
end
