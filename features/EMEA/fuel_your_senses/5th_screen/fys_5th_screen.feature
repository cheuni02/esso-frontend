
Feature: 'Which member of the McLaren Honda formula 1 team are you?' screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need e.g. McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that  information
  In this case we are examining the 5th screen - 'Which member of the McLaren Honda formula 1 team are you?' screen

  Background: navigating to 'Which member of the McLaren Honda formula 1 team are you?' screen
    Given I am currently on FYS screen - 5 - 'Which member of the McLaren Honda formula 1 team are you?'
    Then I should see the title 'Which member of the McLaren Honda formula 1 team are you?'
    When I press 'start'
    Then I should be taken to part 1 of 4 stages : 'Before the race begins, you're most likely to be...'

   Scenario Outline:
     When I choose my first answer - <answer1>
     And I choose my second answer - <answer2>
     And I choose my third answer - <answer3>
     And I choose my fourth answer - <answer4>
     Then I should get the result that I am the member: <member>

    Examples:
      | answer1 | answer2 | answer3 | answer4 | member |
      | Checking every last detail on the engine                                        | The technology inside\, the technology outside\, all of the technology | The roar of the crowd                              | Winning the next one, what else?                       | The mechanic  |
      | Thinking about every twist and turn of the track                                | Your view of the track out of the cockpit                              | The roar of the engine                             | The state of the car and how it's looking              | The driver    |
      | Giving an off the cuff (meticulously prepared) inspirational speech to the team | How great it looks and sounds to your VIP guests                       | You, yourself and all the amazing things about you | Celebrating and enjoying the win (sensibly, of course) | The team boss |
      | Watching and checking out the competition                                       | Its perfect blend of design and technology                             | The pit crew over the sound of dropped spanners    | What the next track looks and feels like               | Race engineer |