class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :hashed_password, presence: true

  validate :password_length

  has_many :comments, foreign_key: "commenter_id"
  has_many :reviews, foreign_key: "reviewer_id"
  has_many :ratings, foreign_key: "rater_id"

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @raw_password = new_password
    self.hashed_password = @password = Password.create(new_password)
  end

  def self.authenticate(user_data)
    user = User.find_by(email: user_data[:email])
    user if user && user.password == user_data[:password]
  end

  private

  def password_length
    if @raw_password || new_record?
      unless @raw_password && @raw_password.length != 0
        errors.add(:password, "cannot be empty")
      end
    end
  end

end
