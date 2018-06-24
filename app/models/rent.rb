class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :property
   validates :price, numericality: { greater_than: 100,  only_integer: true }
   validate :rent_date_cannot_be_in_the_past
   validate :devolution_date_cannot_be_in_the_past


def rent_date_cannot_be_in_the_past
  if rent_date.present? && rent_date < Date.today
    errors.add(:rent_date, "can't be in the past")
  end
end
def devolution_date_cannot_be_in_the_past
  if devolution_date.present? && devolution_date < Date.today
    errors.add(:devolution_date, "can't be in the past")
  end
end
end
