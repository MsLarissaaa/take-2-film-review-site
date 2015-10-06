class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: :User
  belongs_to :film
  has_many :comments

  has_many :ratings, as: :rateable

end
