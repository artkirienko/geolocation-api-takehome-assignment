# frozen_string_literal: true

require "rails_helper"

class DummyModel
  include ActiveModel::Model
  attr_accessor :ip

  validates_with IpValidator
end

RSpec.describe IpValidator do
  let(:dummy_model) { DummyModel.new }

  describe "#validate" do
    context "when given a valid IPv4 address" do
      it "does not add an error to the record" do
        dummy_model.ip = "192.168.1.1"
        dummy_model.validate
        expect(dummy_model.errors[:ip]).to be_empty
      end
    end

    context "when given a valid IPv6 address" do
      it "does not add an error to the record" do
        dummy_model.ip = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
        dummy_model.validate
        expect(dummy_model.errors[:ip]).to be_empty
      end
    end

    context "when given an invalid IP address" do
      it "adds an error to the record" do
        dummy_model.ip = "invalid_ip"
        dummy_model.validate
        expect(dummy_model.errors[:ip]).to include("It's not a valid IPv4/IPv6 address.")
      end
    end
  end
end
