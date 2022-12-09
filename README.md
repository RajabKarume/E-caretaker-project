# README

This README would normally document whatever steps are necessary to get the
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

* ...
# E-caretaker-project

created by Rajab Karume 9th December 2022

# FRONT-END REPOSITORY

The front end reppository is on https://github.com/RajabKarume/E-caretaker-front-end.git

and the deployed website on https://e-caretaker-front-end.vercel.app/


# SETUP INSTALLATION

- Clone the repository
- Run the following commands in your terminal:
    -`bundle install`
    -`rails db:migrate db:seed`
    -`rails s`
- Open Postman to test the Api on: http://localhost:3000


# DESCRIPTION

This is a backend API created using ruby on rails. It allows the user to access various superheroes and their powers.
GET /users alows you veiw all users on the database:

  {
        "id": 1,
        "username": "Rajab",
        "password_digest": "$2a$12$BsBg5bk4NgoepqoCcP1n.OTLPeJFHp/hgoK7H/NvdBUwME1DOBlrW",
        "apartments": [
            {
                "id": 4,
                "name": "Hermes",
                "location": "Kileleshwa",
                "user_id": 1,
                "tenants": []
    }
     {
                "id": 2,
                "name": "Apollo",
                "location": "Kileleshwa",
                "user_id": 2,
                "tenants": [
                    {
                        "id": 6,
                        "name": "Aurelio McGlynn VM",
                        "email": "carlos.larkin@stanton.com",
                        "phone_number": 254789258732,
                        "house_number": 3,
                        "number_of_bedrooms": "1 bedroom",
                        "rent": 31554,
                        "is_paid": true,
                        "apartment_id": 2,
                        "created_at": "2022-12-09T13:04:07.483Z",
                        "updated_at": "2022-12-09T13:04:07.483Z"
                    },
    }

    when logged in (http://127.0.0.1:3000/login) with sample username: `Rajab` password:`user1` user is able to see a list of apartments:
    {
        "id": 1,
        "name": "Ares",
        "location": "Ruiru",
        "user_id": 2,
        "tenants": [
            {
                "id": 11,
                "name": "Genevie Considine",
                "email": "humberto@ullrich-harber.net",
                "phone_number": 254792974793,
                "house_number": 13,
                "number_of_bedrooms": "1 bedroom",
                "rent": 16945,
                "is_paid": false,
                "apartment_id": 1
            },
            {
                "id": 37,
                "name": "The Hon. Shawnda Wilderman",
                "email": "darrin_quitzon@bednar.name",
                "phone_number": 254786024110,
                "house_number": 24,
                "number_of_bedrooms": "2 bedrooms",
                "rent": 63976,
                "is_paid": true,
                "apartment_id": 1
            },
            {
                "id": 43,
                "name": "Audrey Ruecker I",
                "email": "todd_stark@wunsch-prohaska.name",
                "phone_number": 254707356903,
                "house_number": 34,
                "number_of_bedrooms": "1 bedroom",
                "rent": 13896,
                "is_paid": false,
                "apartment_id": 1
            },
            {
                "id": 50,
                "name": "Elliott Reynolds",
                "email": "augustine.rowe@kris.biz",
                "phone_number": 254749625336,
                "house_number": 19,
                "number_of_bedrooms": "2 bedrooms",
                "rent": 62876,
                "is_paid": false,
                "apartment_id": 1
            },
            {
                "id": 57,
                "name": "Lenny Muller I",
                "email": "ludie.witting@balistreri.com",
                "phone_number": 254777136893,
                "house_number": 38,
                "number_of_bedrooms": "bedsitter",
                "rent": 29463,
                "is_paid": false,
                "apartment_id": 1
            },
            {
                "id": 68,
                "name": "Lynwood West",
                "email": "elwood_goldner@herman.io",
                "phone_number": 254733963218,
                "house_number": 9,
                "number_of_bedrooms": "3 bedrooms",
                "rent": 66243,
                "is_paid": false,
                "apartment_id": 1
            },

        and tenants:

        {
        "id": 1,
        "name": "Geoffrey Torphy",
        "email": "jone.dooley@robel-hessel.name",
        "phone_number": 254723121014,
        "house_number": 8,
        "number_of_bedrooms": "bedsitter",
        "rent": 28887,
        "is_paid": false,
        "apartment_id": 9,
        "apartment": {}
         {
        "id": 2,
        "name": "Marietta Gerhold JD",
        "email": "shanon@bode.org",
        "phone_number": 254715772150,
        "house_number": 13,
        "number_of_bedrooms": "bedsitter",
        "rent": 68052,
        "is_paid": false,
        "apartment_id": 15,
        "apartment": {}

# TECHNOLOGIES USED

This project was created using ruby on rails

# KNOWN BUGS

There are no known bugs for this project so far.

# LICENSE INFORMATION

Copyright (c) 2022, Rajab Karume





