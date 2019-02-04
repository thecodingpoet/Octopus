# Social Media Lists

This application lets you view all tweets and Facebook posts from lists of people. These lists will be a combination of custom lists that we create ourselves and lists built from existing tables in our database.

## Installation

Follow these easy steps to install and start the app:

### Pre-requisites
- Ruby >= 2.3.6
- Ruby on Rails >= 5.1.6.1
- PostgreSQL
- Chrome Browser

### Set up Rails app

First, install the gems required by the application:

    bundle

Next, execute the database migrations/schema setup:

	bundle exec rails db:setup


### Start the app

Start the Rails app to see the application:

    bundle exec rails server

You can find your app now by pointing your browser to [http://localhost:3000](http://localhost:3000)

### Running specs
    bundle exec rspec

