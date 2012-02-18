FactoryGirl.define do
  factory :user do
    email                 'user@toodoo.com'
    password              'toodoo'
    password_confirmation 'toodoo'
  end
end