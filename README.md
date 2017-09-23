# Rideshare Rails

In this application you will build a website to model a small community ridesharing app.

There will be two main pieces of functionality:
- New passengers and drivers can sign up for the service and review their information
- Passengers can request and rate trips, and drivers can see their aggregated statistics

This project is meant to be exploratory. Take time to try to dive into each piece of Rails (routes, controllers, models, views). This project is built so that you and your partner can create the waves yourself based on the dependencies of the requirements given.

## Learning Goals

This project should demonstrate you ability to:

1. Create multiple related Active Record Models
1. Create models with validations and methods performing business logic
1. Craft effective RESTful routing
1. Work with a partner to create an attractive and functional Rails site
1. Practice Agile methodology
1. Use CSV files to seed data into a rails app.

## Baseline

Before you start writing _any_ code:

- Review the requirements with your partner
- Create a Trello board
  - Organize your tasks/stories
  - Discuss who will do which tasks and when you will target completion
    - What things should be done together as pairs vs individually?
  - Organize your tasks/stories into iterations (a.k.a waves)
- Create a data diagram based on the data in the CSV files

Once the above is complete, this project:

- Requires a shared repo with your partner as a collaborator
- Requires you to create a Rails application which
  - Conforms to Rails conventions on naming and inflection
  - Is created by using `rails new .` you will create a new rails app _inside_ of the fork folder instead of creating a _new_ folder for your rails app
    - `rails new` will ask if you want to overwrite the existing files `README.md` and `db/seeds.rb`. Answer `n` to both of these (keep the existing file)
  - Uses [Postgresql](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/08-rails/how-to-use-postgres.md) as its database.

**Your team shall submit a pull request with a link to your Trello board once you are done with the baseline which shall be reviewed before moving onto implementing the requirements**

## Minimum Requirements

However far you and your partner get, the application should have, at a minimum, the following features:

- Seeded data in your database from the original CSV files (see below)
- Multiple related Active Record models
- [RESTful routing](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/08-rails/mvc-and-restful-routing.md)
- Deployed application to [Heroku](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/11-deploying-to-heroku.md)
- A "look and feel" that will make you and your partner happy!

### Seeding the Database

We have provided sample data for your site in the form of CSV files. These files are located in the directory `db/seed_data/`. We have also provided a seed script, `db/seeds.rb`, to load these files into your database.

`db/seeds.rb` assumes a few things about how your database is set up:

- There are `Driver`, `Passenger` and `Trip` models
- These models are related in a certain way
- The field names of these models match the column names in the CSV files

This is the recommended way to configure this project, but not a hard requirement. If you've got a good reason to change the setup, feel free to edit `db/seeds.rb` accordingly.

### Things to Keep in Mind

1. Use git relentlessly
1. Pair program on difficult problems and to share learning experiences
1. Try to place business logic in your model classes
1. You will probably need nested routes, but avoid routes that are more than 2 levels deep
1. Use Semantic HTML
1. Make good use of partial views
1. Don't forget validations! (can a trip exist without a driver or passenger...)
1. You may not be able to get all the user stories done. **Prioritize!**

## User Stories

### Overall

- From any page I can click a menu entry to create a new passenger
- From any page I can click a menu entry to create a new driver
- From any page I can click a menu entry to view a list of all passengers
- From any page I can click a menu entry to view a list of all drivers

### Viewing Passengers

- On the passenger list page I can click on a passenger to see that passenger's details
- On the passenger's details page:
    -  I can see a list of trips that passenger went on
    - Shows the total amount the passenger has been charged
    - Clicking on an individual trip will bring up details for the trip
    - On a specific passenger's page I can edit and delete that passenger
    - When viewing a passenger's details I can add a new trip
    	- When creating a new trip
    		- An available driver is selected by the server automatically
    		- The trip starts with no rating
    	- A new trip cannot be created until all that passengers trips are rated.
    - When viewing a passenger's trips you can assign a rating for the trip, 1-5

### Investigating Trips

On the trip details page

-  I can view details of the trip and links to the driver and the passenger
-  I can choose to edit and delete details about the trip

### Viewing Drivers

- From any page I can click a menu entry to be taken to the driver index page and see a list of all the drivers
- On the driver index page I can click on an individual driver to see that person's details
- On the driver details page, I can see a list of trips that driver made
  - Clicking on an individual trip will bring up details for the trip
  - The driver details page will also show the driver's total earnings (total of each trip minus 15%)
- The driver list and driver details pages show the driver's average rating
- On the drivers page I can create, edit and delete drivers
