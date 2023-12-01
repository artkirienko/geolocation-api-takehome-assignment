# frozen_string_literal: true

class LocationSerializer
  include JSONAPI::Serializer

  set_key_transform :camel_lower
  attributes :id, :ip, :latitude, :longitude, :address, :city, :state, :state_code, :postal_code, :country,
             :country_code, :raw_data, :created_at, :updated_at

  link :self do |object, _params|
    Rails.application.routes.url_helpers.api_v1_location_path(object.id)
  end
end
