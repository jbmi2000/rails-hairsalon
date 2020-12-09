# README
The 1 Salon Stylist Client Manager
This application is the beginning of a salon customer management system, which allows stylists to create their own unique user account with password, and manage their own list of clients, tracking their name, phone number, and any notes about their hair care needs. Users of this application (salon stylists) will be able to do the following for:

Clients:
create a new client.
display information for that client.
edit client information.
display a complete list of their own clients.
delete their own clients, as needed.

Appointments:
track appointments by date (day of the week).
view their own appointments.
create an appointment for their own client.
delete appointments for their own clients.

Installation
Clone the repo at https://github.com/jbmi2000/rails-hairsalon in github, to your local terminal environment and run the following commands:

$ gem install bundler ... to install Bundler
$ bundle install ... to install the Ruby Gems.
$ rails s (rails server) ... to boot up your server

This command will execute the config.ru and display a domain for the application. From your browser, go to localhost:3000/.  This will bring you to the Welcome and login page for the application.

Usage
Once on the homepage, you will be given the following options:

Log in with your current username and password 
*The application will display a credentials error if either the username or password are not entered correctly.

Create a new username and password using the Sign Up button *When you create a new username and password, you will be redirected to the Login page to log in to the appication.

When logged in, you will be presented with the Client Management Dashboard and greeted by the username that you created.  The following options will be available:

Create a New Appointment
View Your Appointments
Create a New Client
View Your Client List
Logout

Create a New Appointment will allow you to enter a client name and select a day for their next appointment.

View Your Appointments will display a list of clickable appointments that will, in turn, display the client(s) scheduled.

Create a New Client will permit you to add and save new client information.  Each client will have a name, phone number, and specific hair care notes.

View Your Client List wil display a list of clients, each of which when clicked, will display the client information being tracked.  It will also contain a button to schuedule an appointment for that client.  

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/jbmi2000/beauty-salon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

License
The gem is available as open source under the terms of the MIT License.

Code of Conduct
Everyone interacting in the Hairsalon project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
# rails-hairsalon
