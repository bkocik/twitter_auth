Feature: Authentication
In order to see and send Twitter messages
As a user
I want to log in with Twitter

 Scenario: Viewing the authentication page
   Given I am signed in
   When I go to "the auth page"
   Then I should see "You are logged in as"
