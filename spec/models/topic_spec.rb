require 'rails_helper'

RSpec.describe Topic, type: :model do
  it "is valid" do
    expect(FactoryBot.build(:topic)).to be_valid
  end

  describe "invalid" do
    it "lacks a title" do
      expect(FactoryBot.build(:topic, title: "")).to_not be_valid
    end

    it "lacks a subtitle" do
      expect(FactoryBot.build(:topic, subtitle: "")).to_not be_valid
    end

    it "lacks a description" do
      expect(FactoryBot.build(:topic, description: "")).to_not be_valid
    end
  end
end
