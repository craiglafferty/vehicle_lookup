require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :price => "9.99",
      :registration => "Registration",
      :manufacturer => "Manufacturer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/Manufacturer/)
  end
end
