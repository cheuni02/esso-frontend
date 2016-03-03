
Feature: Diesel Fuel information page
  As a visitor to the esso websites interested in details about Synergy Diesel fuels
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visitng the Diesel Engine page
    Given i visit the 'How our Synergy Diesel works?' page on the esso website via the top level navigation via 'fuels'

  @esso-it @esso-be @esso-be-fr @esso-no @esso-nl
  Scenario: Check of 'How our Synergy Diesel works?' Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header

  @esso-lu @esso-lu-de
  Scenario: Check of 'How our Synergy Diesel works?' Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header
    And there should also be copy inside the hero module on the page

  @esso-uk @esso-cy @esso-cy-en
  Scenario: Check of 'How our Synergy Diesel works?' Hero module with hero copy
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header
    And there should also be copy inside the hero module on the page

  @esso-it @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Fuel injectors Video Module
    When i examine module #2 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #2
    And there should also be an interactive youtube video in module #2

  @esso-it @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Combustion chamber Video Module
    When i examine module #3 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #3
    And there should also be an interactive youtube video in module #3

  @esso-it @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: 'A closer look' Video Module
    When i examine module #4 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #4
    And there should also be an interactive youtube video in module #4

  @esso-it @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Exhaust valves Video Module
    When i examine module #5 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #5
    And there should also be an interactive youtube video in module #5

  @EMEA 
  Scenario: Fuels Footer
    When i check each of the links in the footer area of the fuels page
    Then there should be 4 modules and i should see that each item has a link and associated image with text