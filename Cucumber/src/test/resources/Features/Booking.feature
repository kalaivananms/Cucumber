Feature: Verifying adactin details

  Scenario : verifying adactin login with valid credentials
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    And User should verify the "<Check-In Date shall be before than Check-Out Date>"  and "<Check-Out Date shall be after than Check-In Date>"
    Then User should Select the hotel
    And User should book the hotel"<firstname>", "<lastname>", "<billingaddress>","<creditcardno>","<creditcardtype>","<expirymonth>","<expiryyear>","<cvvnumber>"
      | creditcardtype   | expirymonth | expiryyear | cvvnumber |
      | Mastercard       | July        |       2023 |       345 |
      | Visa             | August      |       2025 |       435 |
      | American Express | March       |       2026 |       897 |
      | Credit Card      | April       |       2022 |       243 |
      
    Then User should verify the confirmation orderid
    Examples

  Scenario: verifying booking option in adactin by entering all details
    Given User is on the adactin page
    When User should enter "<userName>" and "<password>"
    And User should click login button
    And User should search for hotel "<location>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adultsperroom>"
    And User should Select the hotel
    And User should click book now without entering field
    Then User sould verify "Please Enter your First Name", "Please Enter you Last Name", "Please Enter your Address", "Please Enter your 16 Digit Credit Card Number", "Please Select your Credit Card Type", "Please Select your Credit Card Expiry Month", "Please Enter your Credit Card CVV Number"
