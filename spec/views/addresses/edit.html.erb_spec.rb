require 'spec_helper'

describe "addresses/edit.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :name => "MyString",
      :email => "MyString",
      :phone => 1
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path(@address), :method => "post" do
      assert_select "input#address_name", :name => "address[name]"
      assert_select "input#address_email", :name => "address[email]"
      assert_select "input#address_phone", :name => "address[phone]"
    end
  end
end
