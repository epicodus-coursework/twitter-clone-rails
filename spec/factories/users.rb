FactoryGirl.define do
  factory :user do
    email('matt@matt.com')
    password('12345678')
  end

  factory :post do
    body('Matts the best around')
    user_id(1)
  end
end
