class Property < ApplicationRecord
  has_many :rents
  has_many :users, :through => :rents
<<<<<<< HEAD
=======
   
>>>>>>> 8c2c9d3039de42c96207828ab5a5d686b193d5d2
  belongs_to :admin
  has_attached_file :image, styles: {large: '600x600', medium: '300x300', thumb: '150x150#'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :images, :dependent => :destroy

  has_many :comments




  def address
    [houseNumber, street, city, state, zipcode, country].compact.join(', ')
  end

  geocoded_by :address, latitude: :lat, longitude: :lng

  after_validation :geocode, if: :street_changed?, if: :city_changed?, if: :state_changed?, if: :houseNumber_changed?, if: :country_changed?, if: :zipcode_changed?


end
