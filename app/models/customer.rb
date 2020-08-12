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
# Customer Model

class Customer < ApplicationRecord
  # Relations
  has_many :insurances, dependent: :nullify
  has_many :cars, through: :insurances

  # Validations
  validates :email, uniqueness: true, allow_blank: true
  validates :last_name, presence: true
  validates :age, numericality: true

  # Scopes
  scope :age_between, ->(lower_limit, higher_limit) { where(age: lower_limit..higher_limit) }
end
