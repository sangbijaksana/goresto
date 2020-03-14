require 'rails_helper'

RSpec.describe Food do
  it 'is valid with valid attributes' do
    expect(Food.new).to be_valid
  end
end
