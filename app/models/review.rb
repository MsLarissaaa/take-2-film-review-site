class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: :Reviewer
  belongs_to :film

  has_many :ratings, as: :rateable

end
