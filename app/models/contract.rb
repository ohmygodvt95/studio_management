class Contract < ApplicationRecord
  enum status: [:pending, :working, :completed, :destroy]

  belongs_to :customer
  belongs_to :user

  has_many :contract_details
end
