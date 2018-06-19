class Rent < ApplicationRecord
  belongs_to :user
  has_many :claims
  belongs_to :property
  # why does rent belong to property?

end
