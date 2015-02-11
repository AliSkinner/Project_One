class User < ActiveRecord::Base

  has_many :songs
  has_many :comments, through: :songs, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, presence: true
  # validates :email, presence: true

 
  mount_uploader :profile_pic, ProfilePicUploader

  def admin?
    self.role == 'admin'
  end


end
