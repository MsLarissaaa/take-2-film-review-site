class User < ActiveRecord::Base
  # include BCrypt

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  # validates :password_digest, presence: true

  has_many :comments, foreign_key: "commenter_id"
  has_many :reviews, foreign_key: "reviewer_id"
  has_many :ratings, foreign_key: "rater_id"

  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 4 }

  # def password
  #   @password ||= Password.new(password_digest)
  # end

  # def password=(new_password)
  #   @raw_password = new_password
  #   self.hashed_password = @password = Password.create(password_digest)
  # end

  # def self.authenticate(user_data)
  #   user = User.find_by(email: user_data[:email])
  #   user if user && user.password == user_data[:password]
  # end

  # private

  # def password_length
  #   if @raw_password || new_record?
  #     unless @raw_password && @raw_password.length != 0
  #       errors.add(:password, "cannot be empty")
  #     end
  #   end
  # end

end
