require 'rails_helper'

RSpec.describe Vehicle, type: :model do

	context 'validation' do
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:registration) }
    it { should validate_presence_of(:manufacturer) }
  end

end


