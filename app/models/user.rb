class User < ActiveRecord::Base
  # include ApplicationHelper

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :comments, foreign_key: "commenter_id"
  has_many :reviews, foreign_key: "reviewer_id"
  has_many :ratings, foreign_key: "rater_id"

  has_secure_password


  before_create :set_trusted

  TRUSTED_SITES = ["nytimes.com", "chicagoreader.com", "suntimes.com", "chicagotribune.com"]

  def set_trusted
    domain = email.split("@").last
    if TRUSTED_SITES.include? domain
      self.trusted = "trusted"
    else
      self.trusted = "untrusted"
    end
  end


end
