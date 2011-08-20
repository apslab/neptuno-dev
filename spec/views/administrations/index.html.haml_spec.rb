require 'spec_helper'

describe "administrations/index.html.haml" do
  before(:each) do
    assign(:administrations, [
      stub_model(Administration,
        :name => "Name",
        :address => "Address"
      ),
      stub_model(Administration,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of administrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
