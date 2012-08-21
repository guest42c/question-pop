class Video < ActiveRecord::Base
  has_many :questions
  belongs_to :user
  attr_accessible :description, :title, :url, :user_id

  validates :url, presence: true
  validates :user, presence: true


end
