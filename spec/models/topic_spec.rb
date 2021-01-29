require 'rails_helper'

RSpec.describe Topic, type: :model do
  it "is valid" do
    expect(FactoryBot.build(:topic)).to be_valid
  end
end
