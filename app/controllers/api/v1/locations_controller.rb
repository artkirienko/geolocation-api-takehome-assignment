# frozen_string_literal: true

module Api
  module V1
    class LocationsController < ApplicationController
      before_action :set_location, only: %i[show update destroy]

      # GET /api/v1/locations
      def index
        jsonapi_paginate(Location.all) do |paginated|
          render jsonapi: paginated
        end
      end

      # GET /api/v1/locations/1
      def show
        render jsonapi: @location
      end

      # POST /api/v1/locations
      def create
        @location = Location.new(jsonapi_deserialize(location_params, only: [:ip]))

        if @location.save
          render jsonapi: @location, status: :created, location: api_v1_location_url(@location)
        else
          render jsonapi_errors: @location.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/locations/1
      def update
        if @location.update(jsonapi_deserialize(location_params, only: [:ip]))
          render jsonapi: @location
        else
          render jsonapi_errors: @location.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/locations/1
      def destroy
        @location.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_location
        @location = Location.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def location_params
        { data: params.require(:data).permit(:type, attributes: :ip) }
      end
    end
  end
end
