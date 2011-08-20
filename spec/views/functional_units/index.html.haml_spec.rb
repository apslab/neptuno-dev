require 'spec_helper'

describe "functional_units/index.html.haml" do
  before(:each) do
    assign(:functional_units, [
      stub_model(FunctionalUnit,
        :owner => "",
        :location => "Location"
      ),
      stub_model(FunctionalUnit,
        :owner => "",
        :location => "Location"
      )
    ])
  end

  it "renders a list of functional_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
