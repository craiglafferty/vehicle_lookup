require 'rails_helper'

RSpec.describe "vehicles/new", type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
      :price => "9.99",
      :registration => "MyString",
      :manufacturer => "MyString"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input#vehicle_price[name=?]", "vehicle[price]"

      assert_select "input#vehicle_registration[name=?]", "vehicle[registration]"

      assert_select "input#vehicle_manufacturer[name=?]", "vehicle[manufacturer]"
    end
  end
end
