require 'rails_helper'

RSpec.describe Point, type: :model do
  let(:case_object) { FactoryBot.create(:case_object) }

  it "is valid" do
    expect(FactoryBot.create(:point, case_id: case_object.id)).to be_valid
  end

  describe "invalid" do
    it "lacks case_id" do
      expect(FactoryBot.build(:point, case_id: nil)).to_not be_valid
    end

    it "references case that does not exist" do
      expect(FactoryBot.build(:point, case_id: 000)).to_not be_valid
    end

    it "lacks title" do
      expect(FactoryBot.build(:point, title: "", case_id: case_object.id)).to_not be_valid
    end

    it "lacks source" do
      expect(FactoryBot.build(:point, source: "", case_id: case_object.id)).to_not be_valid
    end

    it "contains invalid status" do
      expect(FactoryBot.build(:point, status: "invalid", case_id: case_object.id)).to_not be_valid
    end
  end
end
