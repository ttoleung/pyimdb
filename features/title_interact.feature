Feature: Interact with IMDB Display Title page
As a user to the IMDB website
I want to have a Title Display page 
So that I can interact with key information about my favourite movie

  Background: 
    Given I am using the desktop version of the website
  
  Scenario: Add to Watchlist
    Given I load the title display page of my favourite movie
      And I am logged in
     When I add the movie to my Watchlist
     Then the movie is added to my Watchlist
  
  Scenario: Rate This Movie
    Given I load the title display page of my favourite movie
      And I am logged in
     When I rate the movie
     Then the my rating is accepted 
  
  Scenario: Edit Page
    Given I load the title display page of my favourite movie
      And I am logged in
     When I contribute by editing page
     Then I see existing content editable
  
  Scenario: Write Review
    Given I load the title display page of my favourite movie
      And I am logged in
     When I contribute by writing review
     Then I am prompted to add a new review
  
  Scenario Outline: Interact Website as Anonymous User
    Given I load the title display page of my favourite movie
      And I am not logged in
     When I attempt to <action>
     Then I am redirected to the log-in page
  
    Examples: 
      | action           | 
      | Add to Watchlist | 
      | Rate This movie  | 
      | Edit Page        | 
      | Write Review     | 

