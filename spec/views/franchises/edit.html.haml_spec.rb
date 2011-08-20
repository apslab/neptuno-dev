require 'spec_helper'

describe "franchises/edit.html.haml" do
  before(:each) do
    @franchise = assign(:franchise, stub_model(Franchise,
      :name => "MyString"
    ))
  end

  it "renders the edit franchise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => franchises_path(@franchise), :method => "post" do
      assert_select "input#franchise_name", :name => "franchise[name]"
    end
  end
end
