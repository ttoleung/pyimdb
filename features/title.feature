Feature: Development Workflow Integration
  Developer should be able to push code to feature branches
  Hooks should continues to work as expected

Scenario: Push to Feature Branch
  Given a project using Gitflow workflow
  And developer has write access to this repository
  When developer push commits to feature branch
  Then commits should be pushed to Bitbucket

Scenario Outline: Existing hook continues to work
  Given a project has YACC commit hook enabled
  When developer has push a commit <condition> proper JIRA ID
  Then the push should be <expected>
  
  Examples: Case Study
    | condition     | expected    |
    | without       | rejected    |  
    | with          | accepted    |  

