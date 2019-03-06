class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :suggests, dependent: :destroy

  has_secure_password

  validates :full_name, presence: true,
    length: {maximum: Settings.models.user.max_length_name}
  validates :address, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.models.user.max_length_email},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.models.user.min_length_pass}, allow_nil: true

  enum role: {user: 0, admin: 1}
end
