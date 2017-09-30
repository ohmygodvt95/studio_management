class Device < ApplicationRecord
  belongs_to :user
  has_many :borrows

  mount_uploader :avatar, AvatarUploader
end
