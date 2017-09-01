class Borrow < ApplicationRecord
  belongs_to :device
  belongs_to :contract
end
