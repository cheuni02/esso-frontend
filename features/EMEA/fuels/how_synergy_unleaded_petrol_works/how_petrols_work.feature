
Feature: Petrol Fuel information page
  As a visitor to the esso website
  I should be able to find a page that gives more information about esso petrols
  And these pages should contain all the valid information i need

  Background: Visiting the Petrol Engine page
    Given i visit the 'How our Synergy Petrol works?' page on the esso website via the top level navigation via 'fuels'

  @esso-be @esso-be-fr @esso-no @esso-nl
  Scenario: 'How our Synergy Unleaded Petrol works?' Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header

  @esso-lu @esso-lu-de
  Scenario: Check of 'How our Synergy Unleaded Petrol works?' Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header
    And there should also be copy inside the hero module on the page

  @esso-uk @esso-cy @esso-cy-en
  Scenario: Check of 'How our Synergy Unleaded Petrol works?' Hero module with hero copy
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header
    And there should also be copy inside the hero module on the page

  @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Fuel injectors Video Module
    When i examine module #2 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #2
    And there should also be an interactive youtube video in module #2

  @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Intake Valves Video Module
    When i examine module #3 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #3
    And there should also be an interactive youtube video in module #3

  @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Combustion chamber Video Module
    When i examine module #4 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #4
    And there should also be an interactive youtube video in module #4

  @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: 'A closer look' Video Module
    When i examine module #5 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #5
    And there should also be an interactive youtube video in module #5

  @esso-be @esso-be-fr @esso-no @esso-nl @esso-lu @esso-lu-de @esso-uk @esso-cy @esso-cy-en
  Scenario: Exhaust valves Video Module
    When i examine module #6 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #6
    And there should also be an interactive youtube video in module #6
