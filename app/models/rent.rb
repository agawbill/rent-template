class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :property
  # belongs_to :claims
end
