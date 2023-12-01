# frozen_string_literal: true

class Location < ApplicationRecord
  geocoded_by :ip do |obj, results|
    if (geo = results.first)
      obj.latitude = geo.latitude
      obj.longitude = geo.longitude
      obj.address = geo.address
      obj.city = geo.city
      obj.state = geo.state
      obj.state_code = geo.state_code
      obj.postal_code = geo.postal_code
      obj.country = geo.country
      obj.country_code = geo.country_code
      obj.raw_data = geo.data
    end
  end

  after_validation :geocode
  validates :ip, presence: true, uniqueness: true
  validates_with IpValidator
end
