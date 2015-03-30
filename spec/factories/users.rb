FactoryGirl.define do
  factory :user do
    email('matt@mattpong.com')
    password('heatingup')
  end
  factory :post do
    body('Matts the best around')
    user_id(1)
  end
end
