# Testing Task - Ruby API - Geolocation with external integration

Need to write a simple API backed by any kind of database. The application should be able to store geolocation data in the database, based on IP address or URL. You can use [ipstack.com](https://ipstack.com/) as a service provider for geolocation data. The API should be able to add, delete or provide geolocation data on the base of ip address or URL.

### Requirements

Ruby 3.2.2, PostgreSQL 14.10, Redis 7.2.3 or **Docker**

### Run with Docker

```bash
docker-compose up
```

### Run test suite

```bash
bundle exec rspec
```

## !Important

### My assumptions

My assumptions are as follows regarding the user story for this service:

- user creates a location record via our API by providing an IP address
- a record is enriched with geolocation data if available for this IP address
- user can retrieve information for a single location from our API by providing the location ID
- user can read all location records from our API by iterating through pagination
- user can update a location record via our API by providing a new IP address and location ID
- user can delete a single location from our API by providing the location ID

I assume that the service is not write-intensivve, but is read-intensive. The strategy to manage the read load includes:

- Implementation of proper indexes as we use PostgreSQL database
- Adoption of pagination to prevent resource-intensive queries that fetch all records, followed by serialization and JSON response generation
- Integration of caching using Redis
- Implementation of endpoint security to ensure that only verified users can access our API
- Utilization of the [rack-attack](https://github.com/rack/rack-attack) rack middleware to block and throttle abusive requests
- Incorporation of load balancing measures during deployment to production
- Deployment of read-only replicas of the database in a production environment

### Requests examples

- List all locations paginated
  ```bash
  curl --location 'http://localhost:3000/api/v1/locations/'
  ```
- Iterate through paginated list of all locations
  ```bash
  curl --location 'http://localhost:3000/api/v1/locations?page[number]=2'
  ```
- Show single location by id
  ```bash
  curl --location 'http://localhost:3000/api/v1/locations/1'
  ```
- Create a location using IP address
  ```bash
  curl --location 'http://localhost:3000/api/v1/locations' \
  --header 'Content-Type: application/vnd.api+json' \
  --header 'Accept: application/vnd.api+json' \
  --data '{
    "data": {
      "type": "locations",
      "attributes": {
        "ip": "173.13.2.11"
      }
    }
  }'
  ```
- Update a location using id and new IP address
  ```bash
  curl --location --request PATCH 'http://localhost:3000/api/v1/locations/5' \
  --header 'Content-Type: application/vnd.api+json' \
  --header 'Accept: application/vnd.api+json' \
  --data '{
    "data": {
      "type": "locations",
      "attributes": {
        "ip": "172.56.10.74"
      }
    }
  }'
  ```
- Delete a location by id
  ```bash
  curl --location --request DELETE 'http://localhost:3000/api/v1/locations/7'
  ```

### Application specification:

- It should be a RESTful API
- Keep it mind that the geolocation module should be written in the way that in the future it should be easy to change the service provider.
- It is preferable that the API operates using JSON (for both input and output). Ideally it should follow JSON API standard.
- The solution should also include base specs/tests coverage. If you don’t have enough time, write complete specs for selected endpoint or module.
- As a bonus you can make all endpoints secure, not available to public.

### How to submit: Create a public Git repository and share the link with us

### Notes:

- Pay special attention to handling errors and edge cases. We will test the behavior of the system under various “unfortunate” conditions.
- We will run the application on our local machines for testing purposes. This implies that the solution should provide a quick and easy way to get the system up and running, including test data (hint: you can add Docker support so we can run it easily)

### References

[FAANG System Design Interview: Design A Location Based Service (Yelp, Google Places)](https://www.youtube.com/watch?v=M4lR_Va97cQ)

[PostGIS vs. Geocoder in Rails](https://pganalyze.com/blog/postgis-rails-geocoder)

### TODO

- Query URL with [GeoIP Gem](https://github.com/cjheath/geoip)
- Use [JSONAPI::Resources Gem](https://jsonapi-resources.com/) instead of [jsonapi-serializer](https://github.com/jsonapi-serializer/jsonapi-serializer) and [jsonapi.rb](https://github.com/stas/jsonapi.rb)
- Add JWT authentication
- Use Redis for caching
- Add [rack-attack](https://github.com/rack/rack-attack) rack middleware for blocking & throttling abusive requests
- Add code documentation with [yard](https://github.com/lsegal/yard)
- Add PostGIS if fast nearby locations search needed
