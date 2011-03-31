require 'spec_helper'

describe "addresses/index.html.erb" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :name => "Name",
        :email => "Email",
        :phone => 1
      ),
      stub_model(Address,
        :name => "Name",
        :email => "Email",
        :phone => 1
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
