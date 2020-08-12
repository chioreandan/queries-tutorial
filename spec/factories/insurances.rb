# frozen_string_literal: true

# == Schema Information
#
# Table name: insurances
#
#  created_at      :datetime         not null
#  customer_id     :bigint           not null
#  expiration_date :datetime
#  id              :bigint           not null, primary key
#  plan            :integer          default("red")
#  ref             :string
#  start_date      :datetime
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_insurances_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#

FactoryBot.define do
  factory :insurance do
    ref { Faker::Code.nric }
    plan { Insurance.plans.keys.sample }
    customer { nil }
    association :car, factory: :car
  end
end
