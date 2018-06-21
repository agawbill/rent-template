class Claim < ApplicationRecord
  has_one :user
  has_many :rents
  belongs_to :admin
end
