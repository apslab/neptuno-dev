require 'spec_helper'

describe "franchises/show.html.haml" do
  before(:each) do
    @franchise = assign(:franchise, stub_model(Franchise,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
