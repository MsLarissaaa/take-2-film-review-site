class Rating < ActiveRecord::Base
  belongs_to :rater, class_name: :User
  belongs_to :review
  belongs_to :film

  belongs_to :rateable, polymorphic: true

end
