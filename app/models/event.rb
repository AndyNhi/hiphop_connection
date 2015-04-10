class Event < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader


  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :avatar, presence: true
  validates :date, presence: true
  validates :email, presence: true

end
