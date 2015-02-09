class Artist < ActiveRecord::Base
  has_many :songs
  has_many :comments

  validates :name, presence: true
end
