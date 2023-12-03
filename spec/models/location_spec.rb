# frozen_string_literal: true

require "rails_helper"

RSpec.describe Location, type: :model do
  describe "attributes" do
    it { is_expected.to respond_to(:latitude) }
    it { is_expected.to respond_to(:longitude) }
    it { is_expected.to respond_to(:address) }
    it { is_expected.to respond_to(:city) }
    it { is_expected.to respond_to(:state) }
    it { is_expected.to respond_to(:state_code) }
    it { is_expected.to respond_to(:postal_code) }
    it { is_expected.to respond_to(:country) }
    it { is_expected.to respond_to(:country_code) }
    it { is_expected.to respond_to(:raw_data) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:ip) }

    it "validates uniqueness of ip", vcr: "address-dummy-value" do
      expect(subject).to validate_uniqueness_of(:ip)
    end

    it "validates with IpValidator", vcr: "ipinfo-io-207-244-71-78" do
      expect_any_instance_of(IpValidator).to receive(:validate)

      FactoryBot.create(:location)
    end
  end

  describe "geocoding" do
    let(:location) { FactoryBot.create(:location) }
    let(:raw_data) do
      {
        "city" => "Washington",
        "country" => "US",
        "ip" => "207.244.71.78",
        "loc" => "38.8951,-77.0364",
        "org" => "AS30633 Leaseweb USA, Inc.",
        "postal" => "20004",
        "readme" => "https://ipinfo.io/missingauth",
        "region" => "Washington, D.C.",
        "timezone" => "America/New_York"
      }
    end

    it "geocodes location after validation", vcr: "ipinfo-io-207-244-71-78" do
      expect(location).to receive(:geocode)
      location.valid?
    end

    it "updates location attributes with geocoding results", vcr: "ipinfo-io-207-244-71-78" do
      location.valid?

      expect(location.ip).to eq("207.244.71.78")
      expect(location.latitude).to eq(38.8951)
      expect(location.longitude).to eq(-77.0364)
      expect(location.address).to eq("Washington 20004, US")
      expect(location.city).to eq("Washington")
      expect(location.state).to eq("Washington, D.C.")
      expect(location.state_code).to eq("")
      expect(location.postal_code).to eq("20004")
      expect(location.country).to eq("US")
      expect(location.country_code).to eq("US")
      expect(location.raw_data).to eq(raw_data)
    end
  end
end
