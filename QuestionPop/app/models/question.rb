class Question < ActiveRecord::Base
  attr_accessible :description, :start, :stop, :target, :type
  belongs_to :video
  validates :video, presence: true  
end
