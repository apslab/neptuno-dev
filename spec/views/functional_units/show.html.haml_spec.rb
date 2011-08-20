require 'spec_helper'

describe "functional_units/show.html.haml" do
  before(:each) do
    @functional_unit = assign(:functional_unit, stub_model(FunctionalUnit,
      :owner => "",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
