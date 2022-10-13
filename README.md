# Poject Name
ParkDaCar

# Description

The following are the endpoints that are supported
- Home page where you can see vehicle detail and checkin using the VIN number
- All checkin page to see which vehicles are checked in
- All reservations page to see all the reservations status which are checked in or checked out

# System Architecture

- Homepage to see the detail using NHTSA Api and checkin vehicle and manage reservations for checkin/checkout of vehicle in parking management system.

Advantages:
- Manages checkin and checkout details for vehicle
- see reservations being made in a parking system

Drawbacks:
- Eventual consistency

# Stack

* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](https://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/)

------------
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* `ruby 3.1.0`
* `rails 7.0.4`
* `postgresql`
### Installation

1. clone the repo using `git clone `
2. Install the gems
`bundle install`
3. Setup database `rake db:create rake db:migrate rake db:seed`
4. Start the server
`./bin/dev`
5. Visit the following link in your browser
`localhost:3000`

