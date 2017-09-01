class ContractDetail < ApplicationRecord
  enum type_detail: [:first_phase, :second_phase_short, :second_phase_long]

  belongs_to :user
  belongs_to :contract
end
