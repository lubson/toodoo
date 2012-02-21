FactoryGirl.define do
  factory :task do
    name 'Task'

    trait :day_before do
      sequence(:due) { |day| Date.current - day }
    end

    factory :task_day_before, traits: [:day_before]
  end
end