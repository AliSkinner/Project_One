class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :songs
  has_many :comments, through: :songs

  mount_uploader :profile_pic, ProfilePicUploader

  # validates :name, presence: true
  # validates :email, presence: true
end
