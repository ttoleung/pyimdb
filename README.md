# pyimdb-bdd-demo

This is a simple BDD (behaviour-driven development) demo for the IMDB website using Behave, a Cucumber implementation in Python.

The tests required selenium webdriver to run. Sinc I want my test to run headlessly, I use Xvfb (short for X virtual framebuffer) for in-memory display server for my ubuntu development environment.

    Xvfb :99 & 
    export DISPLAY=:99

![Alt text](/Capture2.PNG?raw=true "Sample Test Run")
