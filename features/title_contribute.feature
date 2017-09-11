Feature: Contribute Title Display Page
In order to contribute to various information about a movie in one place
As a user to the IMDB website
I want to have a title display page as a portal/dashboard

  Background: 
    Given a web browser is at the IMDB title display page of a movie
  
  Scenario: Rate This Movie
    Given the user is logged in
     When the user rates the movie
     Then the rating for the movie is accepted 
  
  Scenario: Edit Page
    Given the user is logged in
     When the user contributes by editing the title display page
     Then the user is redirected to editing screen
      And the existing content of the movie is editable
  
  Scenario: Write Review
    Given the user is logged in
     When the user contributes by writing review
     Then the user will be prompted to add a new review
  
  Scenario Outline: Interact Website as Anonymous User
    Given the user is not logged in
     When the user attempts to <action>
     Then the user will be redirected to the log-in page
  
    Examples: 
      | action           | 
      | rate the movie   | 
      | edit page        | 
      | write review     | 

