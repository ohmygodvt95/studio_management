class Device < ApplicationRecord
  belongs_to :user
  has_many :borrows
end
