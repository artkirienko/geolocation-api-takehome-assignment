# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

unless Location.exists?(ip: "2a09:bac1:1480:8::45:5f")
  Location.new(
    latitude: 49.2497,
    longitude: -123.1193,
    address: "Vancouver V5Y, CA",
    city: "Vancouver",
    state: "British Columbia",
    state_code: "",
    postal_code: "V5Y",
    country: "CA",
    country_code: "CA",
    ip: "2a09:bac1:1480:8::45:5f",
    raw_data:
  { "ip" => "2a09:bac1:1480:8::45:5f",
    "city" => "Vancouver",
    "region" => "British Columbia",
    "country" => "CA",
    "loc" => "49.2497,-123.1193",
    "org" => "AS13335 Cloudflare, Inc.",
    "postal" => "V5Y",
    "timezone" => "America/Vancouver",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "172.56.21.9")
  Location.new(
    latitude: 32.7254,
    longitude: -97.3208,
    address: "Fort Worth 76104, US",
    city: "Fort Worth",
    state: "Texas",
    state_code: "",
    postal_code: "76104",
    country: "US",
    country_code: "US",
    ip: "172.56.21.9",
    raw_data:
     { "ip" => "172.56.21.9",
       "loc" => "32.7254,-97.3208",
       "org" => "AS21928 T-Mobile USA, Inc.",
       "city" => "Fort Worth",
       "postal" => "76104",
       "readme" => "https://ipinfo.io/missingauth",
       "region" => "Texas",
       "country" => "US",
       "timezone" => "America/Chicago" }
  ).save(validate: false)
end

unless Location.exists?(ip: "94.75.206.226")
  Location.new(
    latitude: 52.6317,
    longitude: 4.7486,
    address: "Alkmaar 1811, NL",
    city: "Alkmaar",
    state: "North Holland",
    state_code: "",
    postal_code: "1811",
    country: "NL",
    country_code: "NL",
    ip: "94.75.206.226",
    raw_data:
     { "ip" => "94.75.206.226",
       "city" => "Alkmaar",
       "region" => "North Holland",
       "country" => "NL",
       "loc" => "52.6317,4.7486",
       "org" => "AS60781 LeaseWeb Netherlands B.V.",
       "postal" => "1811",
       "timezone" => "Europe/Amsterdam",
       "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "23.106.249.56")
  Location.new(
    latitude: 1.2897,
    longitude: 103.8501,
    address: "Singapore 018989, SG",
    city: "Singapore",
    state: "Singapore",
    state_code: "",
    postal_code: "018989",
    country: "SG",
    country_code: "SG",
    ip: "23.106.249.56",
    raw_data:
  { "ip" => "23.106.249.56",
    "city" => "Singapore",
    "region" => "Singapore",
    "country" => "SG",
    "loc" => "1.2897,103.8501",
    "org" => "AS59253 Leaseweb Asia Pacific pte. ltd.",
    "postal" => "018989",
    "timezone" => "Asia/Singapore",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "217.160.50.254")
  Location.new(
    latitude: 49.0094,
    longitude: 8.4044,
    address: "Karlsruhe 76133, DE",
    city: "Karlsruhe",
    state: "Baden-Wurttemberg",
    state_code: "",
    postal_code: "76133",
    country: "DE",
    country_code: "DE",
    ip: "217.160.50.254",
    raw_data:
     { "ip" => "217.160.50.254",
       "city" => "Karlsruhe",
       "region" => "Baden-Wurttemberg",
       "country" => "DE",
       "loc" => "49.0094,8.4044",
       "org" => "AS8560 IONOS SE",
       "postal" => "76133",
       "timezone" => "Europe/Berlin",
       "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "2a09:bac5:1240:2b4::45:59")
  Location.new(
    latitude: 47.6062,
    longitude: -122.3321,
    address: "Seattle 98101, US",
    city: "Seattle",
    state: "Washington",
    state_code: "",
    postal_code: "98101",
    country: "US",
    country_code: "US",
    ip: "2a09:bac5:1240:2b4::45:59",
    raw_data:
  { "ip" => "2a09:bac5:1240:2b4::45:59",
    "city" => "Seattle",
    "region" => "Washington",
    "country" => "US",
    "loc" => "47.6062,-122.3321",
    "org" => "AS13335 Cloudflare, Inc.",
    "postal" => "98101",
    "timezone" => "America/Los_Angeles",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "88.208.199.125")
  Location.new(
    latitude: 51.8657,
    longitude: -2.2431,
    address: "Gloucester GL1, GB",
    city: "Gloucester",
    state: "England",
    state_code: "",
    postal_code: "GL1",
    country: "GB",
    country_code: "GB",
    ip: "88.208.199.125",
    raw_data:
  { "ip" => "88.208.199.125",
    "city" => "Gloucester",
    "region" => "England",
    "country" => "GB",
    "loc" => "51.8657,-2.2431",
    "org" => "AS8560 IONOS SE",
    "postal" => "GL1",
    "timezone" => "Europe/London",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "172.104.80.120")
  Location.new(
    latitude: 35.6895,
    longitude: 139.6917,
    address: "Tokyo 101-8656, JP",
    city: "Tokyo",
    state: "Tokyo",
    state_code: "",
    postal_code: "101-8656",
    country: "JP",
    country_code: "JP",
    ip: "172.104.80.120",
    raw_data:
  { "ip" => "172.104.80.120",
    "hostname" => "172-104-80-120.ip.linodeusercontent.com",
    "city" => "Tokyo",
    "region" => "Tokyo",
    "country" => "JP",
    "loc" => "35.6895,139.6917",
    "org" => "AS63949 Akamai Connected Cloud",
    "postal" => "101-8656",
    "timezone" => "Asia/Tokyo",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "207.244.71.78")
  Location.new(
    latitude: 38.8951,
    longitude: -77.0364,
    address: "Washington 20004, US",
    city: "Washington",
    state: "Washington, D.C.",
    state_code: "",
    postal_code: "20004",
    country: "US",
    country_code: "US",
    ip: "207.244.71.78",
    raw_data:
    { "ip" => "207.244.71.78",
      "city" => "Washington",
      "region" => "Washington, D.C.",
      "country" => "US",
      "loc" => "38.8951,-77.0364",
      "org" => "AS30633 Leaseweb USA, Inc.",
      "postal" => "20004",
      "timezone" => "America/New_York",
      "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "196.196.203.50")
  Location.new(
    latitude: 60.1695,
    longitude: 24.9354,
    address: "Helsinki 00100, FI",
    city: "Helsinki",
    state: "Uusimaa",
    state_code: "",
    postal_code: "00100",
    country: "FI",
    country_code: "FI",
    ip: "196.196.203.50",
    raw_data:
  { "ip" => "196.196.203.50",
    "city" => "Helsinki",
    "region" => "Uusimaa",
    "country" => "FI",
    "loc" => "60.1695,24.9354",
    "org" => "AS58065 Packet Exchange Limited",
    "postal" => "00100",
    "timezone" => "Europe/Helsinki",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end

unless Location.exists?(ip: "5.253.205.147")
  Location.new(
    latitude: 50.8818,
    longitude: 4.5082,
    address: "Nossegem 1930, BE",
    city: "Nossegem",
    state: "Flanders",
    state_code: "",
    postal_code: "1930",
    country: "BE",
    country_code: "BE",
    ip: "5.253.205.147",
    raw_data:
  { "ip" => "5.253.205.147",
    "city" => "Nossegem",
    "region" => "Flanders",
    "country" => "BE",
    "loc" => "50.8818,4.5082",
    "org" => "AS9009 M247 Europe SRL",
    "postal" => "1930",
    "timezone" => "Europe/Brussels",
    "readme" => "https://ipinfo.io/missingauth" }
  ).save(validate: false)
end
