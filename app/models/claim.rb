class Claim < ApplicationRecord
  # has_many :properties, :through => :rents
  # has_many :users, :through => :rents
  has_one :user
  has_many :rents
  belongs_to :admin
end
