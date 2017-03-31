require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :price => "9.99",
        :registration => "Registration",
        :manufacturer => "Manufacturer"
      ),
      Vehicle.create!(
        :price => "9.99",
        :registration => "Registration",
        :manufacturer => "Manufacturer"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
  end
end
