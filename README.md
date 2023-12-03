# Testing Task - Ruby API - Geolocation with external integration

Need to write a simple API backed by any kind of database. The application should be able to store geolocation data in the database, based on IP address or URL. You can use [ipstack.com](https://ipstack.com/) as a service provider for geolocation data. The API should be able to add, delete or provide geolocation data on the base of ip address or URL.

### Requirements

Ruby 3.2.2, PostgreSQL 14.10, Redis 7.2.3 or **Docker**

### Run with Docker

```bash
docker-compose up
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

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
