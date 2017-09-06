class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:administrator, :employee]

  has_many :contracts
  has_many :contract_details
  has_many :devices
end
