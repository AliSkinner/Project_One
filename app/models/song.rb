class Song < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  mount_uploader :file, SongFileUploader
  
end
