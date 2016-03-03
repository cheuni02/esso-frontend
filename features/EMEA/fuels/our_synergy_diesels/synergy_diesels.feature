
Feature: Synergy Diesels Fuels page
  As a visitor to the esso websites interested in details about Synergy Diesels fuels
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visiting the Synergy Diesels Fuels page
    Given i visit the 'Synergy Diesels fuels' page on the esso website via the top level navigation via 'fuels'

  @esso-uk @esso-nl @esso-be @esso-be-fr @esso-it @esso-no @esso-it @esso-lu @esso-lu-de
  Scenario: Synergy Diesels Fuels Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header
    And there should also be copy inside the hero module on the page

  @esso-fr
  Scenario: Synergy Diesels Fuels Hero module for France
    When i examine the main top level module on the page
    Then i should see a module containing a header
    And there should also be copy inside the hero module on the page

  @esso-uk @esso-nl @esso-be @esso-be-fr @esso-it @esso-no @esso-it @esso-lu @esso-lu-de @esso-fr
  Scenario: 'Where could you go with more miles?' Module
    When i examine module #2 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #2

  @esso-uk @esso-nl @esso-be @esso-be-fr @esso-lu @esso-lu-de
  Scenario: 'Give your engine a deeper clean with Esso Synergy Supreme+ Diesel' Module
    When i examine module #3 on the fuels page in my browser
    Then i should see some interesting copy displayed in module #3

  @esso-uk @esso-be @esso-be-fr @esso-it  @esso-lu @esso-lu-de @esso-nl
  Scenario: 'Why choose Esso Synergy Supreme+ Diesel?'
    When i examine module #4 on the fuels page in my browser
    Then there should be a copy to explain the Synergy Diesel gives 'A deeper clean'
    And a link to the video 'How our diesel works' with a small thumbnail

  @esso-fr @esso-it @esso-no
  Scenario: 'Why choose Esso Synergy Supreme+ Diesel?'
    When i examine module #4 on the fuels page in my browser
    Then there should be a copy to explain the Synergy Diesel gives 'A deeper clean'

