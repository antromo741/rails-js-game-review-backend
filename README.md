



# Rails JS Game Review App Backend

NEEDED!
Link to the front end https://github.com/antromo741/rails-js-game-review

## About

In this portion of the project we have the Rails Api part. Within this repository contains all the controllers, models, dependencies and allows communication with the front end of the app.


## Installation

Fork and clone this repository along with the frontend repository.
Once you open this on your computer, run bundle install.
We used postgres to make a database server, you will need the database sever to connect to your front end.

## Getting Started 

In the command line run rails db:migrate and migrate the files. 
This is optional, if you would like you can run rails db:seed to get some data into the appliction.
Connect to your database server and keep it running.
Now just run your rails server and you will be all set to connect to the front end once it is open in thr browser.
In the front end, you can open the index using explorer.exe my_index.html.
Now to get aanything to work properly you need to be authenticated and sign in.
## Usage

This is a game review application. Once a user logs in with the original account that was associated with the seeded data,
Username: test@test.com
Password: password
Or signups a new user and creates their own data,
The user will be able to see some games and associated reviews. A user can create, read, update and destroy their own games and reviews.
A user can only have access to the fetch requests once they're authenticated. The way this version of the app works is that if a user is not authenticated, any action will return an error message. 