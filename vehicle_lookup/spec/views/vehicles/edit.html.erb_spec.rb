require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :price => "9.99",
      :registration => "MyString",
      :manufacturer => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_price[name=?]", "vehicle[price]"

      assert_select "input#vehicle_registration[name=?]", "vehicle[registration]"

      assert_select "input#vehicle_manufacturer[name=?]", "vehicle[manufacturer]"
    end
  end
end
