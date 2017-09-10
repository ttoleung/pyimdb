# pyimdb-bdd-demo

This is a simple BDD (behaviour-driven development) demo for the IMDB website using Behave, a Cucumber implementation in Python.

### Part 1
Step definitions are provided under ./features/steps directory. The tests required selenium webdriver to run, and since I am testing in a headless browser, I use Xvfb (X virtual framebuffer) for in-memory display server.

    Xvfb :99 & 
    export DISPLAY=:99

The following is a sample output under my ubuntu development environment
![Alt text](/Capture2.PNG?raw=true "Sample Test Run")


### Part 2
There are 2 newly created feature files under ./features directory, one on the browsing feature and the other on the contribute feature. There are a few good practices that was demonstrated:

- One feature per file
- Common pre-condition are grouped into a Background step
- Use of Scenario Outline to parameterize tests
- All phrasing in 3rd person perspective to be more generic and consistent
- Feature description are written in Gherkin format (In order... As a... I want to...) to provide more context
