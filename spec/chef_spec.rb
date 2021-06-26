require 'rails_helper'

class ChefTest < ActiveSupport::TestCase
  
  RSpec.describe Chef, type: :model do
    context 'validations' do
      it "chef should be valid" do
        chef = Chef.name(name: "").save
        expect(chef).to eq(false)
        end
      end
  end

end
