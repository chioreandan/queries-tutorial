# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  age        :integer
#  created_at :datetime         not null
#  email      :string
#  first_name :string
#  id         :bigint           not null, primary key
#  last_name  :string
#  updated_at :datetime         not null
#  username   :string
#

FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Name.initials(8).downcase }
    email { Faker::Internet.email }
    age { Faker::Number.number(2) }
  end
end
