FactoryGirl.define do

  factory :user do

    username 'test'

  end

  factory :pin do

    sequence(:item_name) { |n| 'Pin Item #{n}' }
    buy_sell false
    description 'Pin item description'
    association :user

  end

end