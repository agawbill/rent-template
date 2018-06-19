class Property < ApplicationRecord
  has_many :rents
  has_many :users, :through => :rents
  belongs_to :admin
end
