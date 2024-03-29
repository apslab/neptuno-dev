require 'spec_helper'

describe "franchises/index.html.haml" do
  before(:each) do
    assign(:franchises, [
      stub_model(Franchise,
        :name => "Name"
      ),
      stub_model(Franchise,
        :name => "Name"
      )
    ])
  end

  it "renders a list of franchises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
