Feature: IMDB Display Title page
As a user to the IMDB website
I want to have a Title Display page 
So that I can browse key information about my favourite movie

  Background: 
    Given I am using the Desktop version of the website
  
  Scenario Outline: Browse Key Information
    Given I load the title display page of my favourite movie
     When I click on the <context> link
     Then I am redirected to <context> page of this movie
  
    Examples: 
      | context            | 
      | Full Cast and Crew | 
      | Trivia             | 
      | User Reviews       | 
      | IMDbPro            | 
  
  Scenario: View Trailer
    Given I load the title display page of my favourite movie
     When I play the trailer
     Then the trailer video is played 
  
