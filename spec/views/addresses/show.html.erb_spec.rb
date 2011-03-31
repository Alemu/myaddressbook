require 'spec_helper'

describe "addresses/show.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :name => "Name",
      :email => "Email",
      :phone => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
