
Feature: Esso 'Motor Oils' homepage functionality
  As a visitor to the esso websites interested about what’s the right motor oil for his/her car
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visiting the Motor Oils page
    Given i visit the 'Motor Oils' page on the esso website via the top level navigation

  Scenario: Motor Oils hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header
    And there should also be copy inside the hero module on the page
    And a link to find recommended oil for your car.

  Scenario: 'Mobil 1 can help you save fuel' module
    When i examine module #2 on the fuels page in my browser
    Then i should see content along with an image displayed on module #2
    And there should also be a link contained within module #2 as a button

  Scenario: 'Mobil 1™' module
    When i examine module #4 on the fuels page in my browser
    Then i should see content along with an image displayed on module #4
    And there should also be a link contained within module #4 as a button

  Scenario: 'Mobil Super™' module
    When i examine module #6 on the fuels page in my browser
    Then i should see content along with an image displayed on module #6
    And there should also be a link contained within module #6 as a button

  Scenario: 'Mobil Delvac™' module
    When i examine module #8 on the fuels page in my browser
    Then i should see content along with an image displayed on module #8
    And there should also be a link contained within module #8 as a button

  Scenario: Fuels Footer
    When i check each of the links in the footer area of the fuels page
    Then there should be 4 modules and i should see that each item has a link and associated image with text