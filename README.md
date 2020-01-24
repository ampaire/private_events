# Private Events

A site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties. Events take place at a specific date and at a location

## Getting started
  
  To get started with the app, first clone the repo and `cd` into the directory:
  
  ```
  $ git clone git@github.com:ampaire/private_events.git
  $ cd private_events
  ```
  
  Then install the needed gems (while skipping any gems needed only in production):
  
  ```
  $ bundle install --without production
  ```
  
  Next, migrate the database:
  
  ```
  $ rails db:migrate
  ```
  
  Finally, run the test suite to verify that everything is working correctly:
  
  ```
  $ rspec spec --format documentation or rspec
  ```
  
  If the test suite passes, you'll be ready to run the app in a local server:
  
  ```
  $ rails server
  ```

## Contributors

Phemia Ampaire [My GitHub Profile](https://github.com/ampaire)
Raymond Olouch [My GitHub Profile](https://github.com/rOluochKe)