Feature: greeter says hello
  In order to start learning Rspec and Cucumber
  As a readerof Rspec book
  I want a greeter says hello

  Scenario: greeter says hello
    Given a greeter
    When I send it the greet message
    Then I should see "Hello Cucumber!"
