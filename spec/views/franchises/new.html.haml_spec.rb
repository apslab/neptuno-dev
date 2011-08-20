require 'spec_helper'

describe "franchises/new.html.haml" do
  before(:each) do
    assign(:franchise, stub_model(Franchise,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new franchise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => franchises_path, :method => "post" do
      assert_select "input#franchise_name", :name => "franchise[name]"
    end
  end
end
