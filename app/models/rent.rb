class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :property
  validates :price, :numericality => true, :allow_nil => false
end
