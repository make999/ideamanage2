class Challenge < ActiveRecord::Base
  has_many :ideas
  belongs_to :user
end
