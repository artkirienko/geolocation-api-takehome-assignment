# frozen_string_literal: true

require "resolv"

class IpValidator < ActiveModel::Validator
  def validate(record)
    case record.ip
    when Resolv::IPv4::Regex
      "It's a valid IPv4 address."
    when Resolv::IPv6::Regex
      "It's a valid IPv6 address."
    else
      record.errors.add :ip, "It's not a valid IPv4/IPv6 address."
    end
  end
end
