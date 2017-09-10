# pyimdb-bdd-demo

This is a simple BDD (behaviour-driven development) demo for the IMDB website using Behave, a Cucumber implementation in Python.

The tests required selenium webdriver to run. Since I am testing in a headless browser, I use Xvfb (X virtual framebuffer) for in-memory display server for my ubuntu development environment.

    Xvfb :99 & 
    export DISPLAY=:99

![Alt text](/Capture2.PNG?raw=true "Sample Test Run")
