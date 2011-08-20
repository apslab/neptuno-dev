require 'spec_helper'

describe "owners/edit.html.haml" do
  before(:each) do
    @owner = assign(:owner, stub_model(Owner,
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => owners_path(@owner), :method => "post" do
      assert_select "input#owner_first_name", :name => "owner[first_name]"
      assert_select "input#owner_last_name", :name => "owner[last_name]"
    end
  end
end
