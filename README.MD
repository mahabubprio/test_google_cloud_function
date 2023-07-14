# Google cloud

# Tasks:

- evaluate and understand how cloud functions works with Ruby
- how we can authenticate into the function
- what are our most suitable candidates for moving from a background job to cloud functions?
- is the CancelShipmentJob a viable candidate?
- what blockers do you see?
- check Newrelic for viable candidates in the non-web APM section?

## Evaluate and understand how cloud functions works with Ruby:

- It is pretty easy to follow the doc in the Google Documentation .
- Followed the doc and created the curl request

## how we can authenticate into the function

- Was not possible to evaluate due to the access problem

## what are our most suitable candidates for moving from a background job to cloud functions?

- Cancel Shipment is fine

## what blockers do you see?

- Database running inside the docker for connecting with the active record.

## Dockerizing File:

```json
FROM ruby:3.0.4

RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /app

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app/

CMD ["bundle", "exec", "functions-framework-ruby", "--target",  "my_http_function"] 
```

## CI/CD:

- Added the `.github/workflows` in the folder.