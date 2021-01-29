require 'faker'

FactoryBot.define do
  factory :case_object do
    topic

    factory :case_object_with_points do
      transient do
        point_count { 2 }
      end

      after(:create) do |case_object, evaluator|
        create_list(:point, evaluator.point_count, case_id: case_object.id, case: case_object, topic: case_object.topic)
      end
    end

  end
end
