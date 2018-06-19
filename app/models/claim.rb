class Claim < ApplicationRecord
  belongs_to :rent
  # why does claim belong to rent?
  belongs_to :admin
end
