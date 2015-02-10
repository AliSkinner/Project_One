class User < ActiveRecord::Base
  has_many :songs
  has_many :comments, through: :songs

  mount_uploader :profile_pic, ProfilePicUploader

  # validates :name, presence: true
  # validates :email, presence: true
end
