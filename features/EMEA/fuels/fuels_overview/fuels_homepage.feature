
Feature: Fuels Homepage
  As a visitor to the esso websites interested in details about fuels
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visitng the Fuels page
    Given i visit the 'fuels home' page on the esso website via the top level navigation via 'fuels'

  @EMEA
  Scenario: Fuels Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header
    And there should also be copy inside the hero module on the page

  @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
  Scenario: 'New look. New journey.'
    When i examine module #2 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #2
    And there should also be an interactive youtube video in module #2

  @esso-de @esso-fr @esso-it
  Scenario: 'Our Synergy Unleaded petrols'
    When i examine module #4 on the fuels page in my browser
    Then i should see content along with an image displayed on module #4
    And  there should also be a link contained within module #4 as a button


  @EMEA
  Scenario: 'Our Synergy diesels'
    When i examine module #6 on the fuels page in my browser
    Then i should see content along with an image displayed on module #6
    And  there should also be a link contained within module #6 as a button

  @EMEA
  Scenario: 'Handy driving tips'
    When i examine module #7 on the fuels page in my browser
    Then i should see content along with an image displayed on module #7
    And  there should also be a link contained within module #7 as a button


  @EMEA
  Scenario: Fuels Footer
    When i check each of the links in the footer area of the fuels page
    Then there should be 4 modules and i should see that each item has a link and associated image with text
