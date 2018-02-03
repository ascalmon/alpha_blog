class Article < ApplicationRecord
  
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :user_id, presence:true
  
  obj = @article_show
  geocoded_by :location, latitude: :latitude, longitude: :longitude  do |obj, results|
  #reverse_geocoded_by :latitude, :longitude |
     if geo = results.first
        obj.city = geo.city
        obj.country = geo.country_code
        obj.latitude = geo.latitude
        obj.longitude = geo.longitude
     end
  end
 after_validation :geocode #, unless: ->(obj){obj.location.present? },

                    #if: ->(obj){obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed?}
end