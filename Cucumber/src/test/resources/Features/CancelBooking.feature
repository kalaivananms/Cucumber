Feature: Verifying search option in Adacting Hotel

  Scenario: verifying cancel booking option in adactin by entering all details
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    And User should verify the "<Check-In Date shall be before than Check-Out Date>"  and "<Check-Out Date shall be after than Check-In Date>"
    Then User should Select the hotel
    And User should book the hotel"<firstname>", "<lastname>", "<billingaddress>","<creditcardno>","<creditcardtype>","<expirymonth>","<expiryyear>","<cvvnumber>"
      | creditcardtype   | expirymonth | expiryyear | cvvnumber |
      | Mastercard       | April       |       2017 |       010 |
      | Visa             | May         |       2018 |       020 |
      | American Express | June        |       2019 |       030 |
      | Credit Card      | July        |       2020 |       040 |
    And User should click and navigate to Booked Itinerary page
    And User should cancel booking by order id
    Then User should verify "The booking has been cancelled." message

  Scenario: verifying cancel booking option in adactin by entering all details
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should click and navigate to Booked Itinerary page
    And User should cancel booking by searching order id
    Then User should verify "The booking has been cancelled." message
