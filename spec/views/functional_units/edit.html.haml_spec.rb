require 'spec_helper'

describe "functional_units/edit.html.haml" do
  before(:each) do
    @functional_unit = assign(:functional_unit, stub_model(FunctionalUnit,
      :owner => "",
      :location => "MyString"
    ))
  end

  it "renders the edit functional_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => functional_units_path(@functional_unit), :method => "post" do
      assert_select "input#functional_unit_owner", :name => "functional_unit[owner]"
      assert_select "input#functional_unit_location", :name => "functional_unit[location]"
    end
  end
end
