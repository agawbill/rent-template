class Property < ApplicationRecord
  has_many :rents
  has_many :users, :through => :rents
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

  validates :price, numericality: { greater_than: 0,  only_integer: true }, presence: true
  validates :zipcode, numericality: { greater_than: 0, less_than: 100000,  only_integer: true }
  validates_presence_of :title
  validates :kind, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :houseNumber, presence: true
  validates :country, presence: true
  validates :availability, presence: true



end
