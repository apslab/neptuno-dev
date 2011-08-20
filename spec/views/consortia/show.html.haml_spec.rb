require 'spec_helper'

describe "consortia/show.html.haml" do
  before(:each) do
    @consortium = assign(:consortium, stub_model(Consortium,
      :name => "Name",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
  end
end
