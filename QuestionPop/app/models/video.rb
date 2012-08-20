class Video < ActiveRecord::Base
  has_many :questions

  attr_accessible :description, :title, :url

  validates :url, :presence => true


end
