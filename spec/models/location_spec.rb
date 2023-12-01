# frozen_string_literal: true

require "rails_helper"

RSpec.describe Location, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:ip) }
    it { is_expected.to validate_uniqueness_of(:ip) }
  end
end
