# frozen_string_literal: true

class ApplicationController < ActionController::API
  include JSONAPI::Deserialization
  include JSONAPI::Pagination

  private

  def jsonapi_meta(resources)
    pagination = jsonapi_pagination_meta(resources)
    pagination.present? ? { pagination: } : {}
  end

  # Max items per page
  def jsonapi_page_size(pagination_params)
    per_page = pagination_params[:size].to_f.to_i
    per_page = 5 if per_page > 5 || per_page < 1
    per_page
  end
end
