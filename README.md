# Rails boilerplate

## What's included

  * 12-factor compliant and ready to deploy on Heroku
  * `postgresql` as the RDBMS
  * `unicorn` as the web server
  * `devise` as the authentication framework
  * `draper` for Decorators
  * `rspec` for tests (with `factory_girl` for factories)
  * `haml` for templates
  * `haml-html5-boilerplate` as the default layout
  * `coffeescript` for Javascript assets
  * `sass` for CSS assets (with Twitter Bootstrap via `bootstrap-sass`)
  * `sidekiq` for workers
  * `memcache` for caching
  * `mailgun` for emailing
  * `newrelic` for app performance monitoring


## Set up

  1. clone this repository

  1. find `FeeligoRailsBoilerplate` in all files and change to your own
  application's name

  3. create a file named `.env` at the project root, and enter your config
  variables as explained below


### Configuration

#### Development

All configuration settings are set as environment variables, which you can
define in a `.env` file at the project root.
The following settings are required:

    HOST_NAME=localhost
      # the hostname on which the app is running
    DEFAULT_EMAIL_ADDRESS=support@feeligo.com
      # the default email address from which email is sent
    DEVISE_SECRET_KEY
      # secret key for Devise. You can generate one with `SecureRandom.hex(64)`
    DATABASE_URL=postgres://localhost/myapp_dev
      # url of the Postgres database for development
    DATABASE_TEST_URL=postgres://localhost/myapp_test
      # url of the Postgres database for testing
    REDIS_SIDEKIQ_URL=redis://127.0.0.1:6379
      # url of the Redis server used by Sidekiq

#### Production

In production, the following settings are required:

    MAILGUN_SMTP_PORT
    MAILGUN_SMTP_SERVER
    MAILGUN_SMTP_LOGIN
    MAILGUN_SMTP_PASSWORD
      # Mailgun credentials, as set by the Heroku Mailgun add-on
    MEMCACHIER_SERVERS
    MEMCACHIER_USERNAME
    MEMCACHIER_PASSWORD
      # Memcache config, as set by the Heroku Memcachier add-on
    NEW_RELIC_LICENSE_KEY
    NEW_RELIC_APP_NAME
      # Newrelic configuration
    WEB_CONCURRENCY
      # Number of Unicorn worker processes to spawn

## Usage

### Development

  1. set up a Postgres database for test and another for development

        CREATE_DATABASE myapp_dev;
        CREATE_DATABASE myapp_test;

  2. at the project root, create a `.env` file containing the configuration
  settings described above

  3. install bundle

        bundle install

  4. run migrations (with `foreman` to pick up env variables)

        foreman run rake db:migrate

  5. run local app with `foreman`

        foreman start -p 3000
