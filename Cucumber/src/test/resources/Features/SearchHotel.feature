Feature: Verifying adactin details

  Scenario: verifying search option in adactin by enter all details credentials
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    Then User should verify "Select Hotel" message

  Scenario: verifying search option in adactin by enter mandatory fields
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    Then User should verify "Select Hotel" message

  Scenario: verifying search option in adactin by entering checkindate greater than checkoutdate
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    Then User should verify the "<Check-In Date shall be before than Check-Out Date>"  and "<Check-Out Date shall be after than Check-In Date>"

  Scenario: verifying search option without entering any details
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search hotel without entering any field
    Then User should verify "Please Select a Location" message
