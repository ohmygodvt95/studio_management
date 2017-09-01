class Log < ApplicationRecord
  enum type_log: [:send, :receive]

  belongs_to :user
  belongs_to :contract, optional: true
end
