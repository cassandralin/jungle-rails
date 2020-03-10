class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { in: 6..20 }, confirmation: true

  validates :password_confirmation, presence: true, if: :password_changed?
end

