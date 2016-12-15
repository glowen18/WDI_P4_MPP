class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: {minimum: 5}, allow_nil: true
  has_and_belongs_to_many :projects
  has_many :tasks

  validates(:name, presence: true)
  validates(:email, presence: true)
end
