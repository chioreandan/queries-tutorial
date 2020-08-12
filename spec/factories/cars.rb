# frozen_string_literal: true

# == Schema Information
#
# Table name: cars
#
#  created_at   :datetime         not null
#  engine_size  :float
#  fuel_type    :integer
#  id           :bigint           not null, primary key
#  insurance_id :bigint
#  make         :string
#  model        :string
#  updated_at   :datetime         not null
#  vin          :string
#
# Indexes
#
#  index_cars_on_insurance_id  (insurance_id)
#
# Foreign Keys
#
#  fk_rails_...  (insurance_id => insurances.id)
#

FactoryBot.define do
  factory :car do
    engine_size { 1.5 }
    make { Faker::Vehicle.manufacture }
    model { Faker::Vehicle.model }
    fuel_type { 0 }
    vin { Faker::Vehicle.vin }
  end
end
