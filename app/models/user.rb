class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:administrator, :employee]
  mount_uploader :avatar, AvatarUploader

  has_many :contracts
  has_many :contract_details
  has_many :devices

  def employee_role
    I18n.t "models.user.role.#{role}"
  end

  class << self
    def roles_select
      roles.map do |role, _|
        [I18n.t("models.user.role.#{role}"), role]
      end
    end
  end
end
