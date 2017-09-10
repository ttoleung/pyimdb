Feature: Browse Title Dissplay Page
In order to browse the all the key information about a movie in one place
As a user to the IMDB website
I want to have a title display page 

  Scenario Outline: Browse Movie Detail 
    Given a web browser is at the IMDB title display page of a movie
     When the user clicks on the <context> link
     Then the user is redirected to <context> page of this movie
  
    Examples: 
      | context            | 
      | Full Cast and Crew | 
      | Trivia             | 
      | User Reviews       | 
      | IMDbPro            | 
  
  Scenario: View Trailer
    Given a web browser is at the IMDB title display page of a movie
     When the user plays the trailer
     Then the trailer of the movie is played 

  Scenario: View More Trailers
    Given a web browser is playing the trailer of a movie
     When the user presses the left or right arrow keys
     Then a different trailer of the movie is played
 
