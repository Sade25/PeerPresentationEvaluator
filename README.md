# Overview

This Evaluation Web Application is a tool for professors and students to create and evaluate presentations. Authentication is handled by Devise. The admin account is used to create new users and presentations. The admin account is also used to view all the scores for all the presentations. The user accounts are able to only review presentations
and view what other users have scored their presentations.

# Dependencies

The Evaluation Web Application requires the following dependencies to be installed:

- Ruby
- Rails
- Devise
- Faker
- some others included in the Gemfile

# Cloning the Repository

```bash
git clone `https://github.com/cse3901-2022au-910/proj6-caffeine-overflow.git`
```

## Install the Dependencies

```bash
bundle install
```

# Set up the Database

1. Run `rake db:create` to create the databases.
2. Run `rake db:migrate` to migrate the database.
3. Run `rake db:schema:load` to load the schema.
4. Run `rake db:seed` to seed the database.

# Usage

1. Run `rails s` to start the server.
2. Go to `localhost:3000` in your browser.

Create an admin account with the following credentials:

- Email: `admin.1@osu.edu`
- Password: `123456`

NOTE: The email must be `admin.1@osu.edu`.

You can also create other users. The database is seeded with 10 users and 10 presentations initially.

# Account Verification

There is no email verfication for this application. It is important that students do not use other people's email addresses.

# Admin

The admin account is used to create new users and presentations. The `Students` and `Presentations` tabs are only visible to the admin account and they allow the admin to preform CRUD on the Users and Presentations table.

The `Scores` table shows all the scores for all the presentations.

## Deletion

When a user is deleted, all the scores that they have given to other presentations are not deleted but the instructor can no longer view the student who wrote the review. When a presentation is deleted, all the scores that other users have given to that presentation are deleted.

# User

A user account is used to review presentations. The `Review` tab is visible to all users and allows them to review presentations. The `Scores` tab is visible to the user user and shows all the scores that others have given to their presentations.

There is no restriction for a single user to review a presentation multiple times. The user can also review their own presentation. The professor, however,
can see this information.

# Scoring

## Grade

The grade is a number between 0 and 100. The grade represents what the student believes the professor should give the presentation.

## Comment

The comment is a string that the student can write to give more information about their grade.

## Q1 - Q4

These are four questions ranging from Strongly Disagree to Strongly Agree. It converts into a numeric value from 1 to 5.
