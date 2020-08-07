class User < ApplicationRecord
  has_secure_password
  has_many :ratings
  has_many :breweries, through: :ratings
end