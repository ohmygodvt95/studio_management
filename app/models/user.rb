class User < ApplicationRecord
  enum role: [:administrator, :employee]

  has_many :contracts
  has_many :contract_details
  has_many :devices
end
