FactoryGirl.define do
  factory :comment do
    author "Nina"
    sequence(:body) { |n| "comment body #{n}" }
  end
end