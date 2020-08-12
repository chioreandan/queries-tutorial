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
# Insurance Model
class Insurance < ApplicationRecord
  # Relations
  belongs_to :customer
  has_one :car, dependent: :destroy

  # Enums
  enum plan: %i[red green yellow]

  # Scopes
  scope :expired, -> { where('expiration_date < ?', Time.zone.now) }
end
