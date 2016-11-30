FactoryGirl.define do
  factory :comment do
    author "john"
    sequence(:body) { |n| "comment body #{n}" }
  end
end
