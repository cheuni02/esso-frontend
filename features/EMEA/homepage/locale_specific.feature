Feature: Esso Homepage Locale Specific Content
  As a visitor to one of the esso international homepages
  I want to make sure that content specific to my locale is displayed in my web browser
  And this content should be loaded in properly

  Background: Getting to an Esso Homepage
    Given i visit the main esso homepage for my locale

  @esso-uk @esso-fr @esso-de @esso-it @esso-nl @esso-be @esso-lu @esso-no @esso-ie
  Scenario: Standard Cookie Messaging
    Then i should see a cookie information message on the top of my screen
    And if i click on the link to dismiss the message
    Then the cookie information banner should no longer be shown

  @esso-cy
  Scenario: Special Cookie Messaging
    Then i should see a popup window requiring me to confirm my acceptance of cookies
    And when i click then checkbox and click to proceed
    Then i should see the esso homepage has rendered in my browser window

  @esso-uk
  Scenario: Social Module
    Then i should see links to follow on facebook and twitter
    And there should also be a module containing a sample of latest tweets about esso
