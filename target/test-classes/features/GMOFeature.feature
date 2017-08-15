@Test
Feature: Smoke test of GMO site

  Scenario: GMO End to End flow
    Given Open "Chrome" browser and launch GMO "AppURL"
    When user is on GMO home page
    Then click on Enter GMO button
    And verify user is on Catalog page
    And I enter "10" quantity for "Tents" item
    And I enter "10" quantity for "Socks" item
    And click on Place An Order button
    And verify user is on Place Order page
    And verify grand total amount is correct
    And click on Proceed with Order button
    And verify user is on Billing Information page
    And I enter "Test User" as name
    And I enter "Market Yard" as address and "Pune" as City and "Maharashtra" as state and "12343" as Zip code
    And I enter "9999988888" as phone number and "test@gmail" as email id
    And I select "Visa" creditcard and enter "4111111111111111" as CC number and "01/19" as expiry date
    And I check the Ship to same as Bill address checkbox
    And I click on Place the Order button
    And verify user is on Order Confirmation Page
    And verify the credit card and Grand total amount
    And click on Return to Home page button
    And user is on GMO home page 
    And user close the browser

 Scenario: GMO End to End flow with different browser and credit card
    Given Open "Firefox" browser and launch GMO "AppURL"
    When user is on GMO home page
    Then click on Enter GMO button
    And verify user is on Catalog page
    And I enter "10" quantity for "Boots" item
    And click on Place An Order button
    And verify user is on Place Order page
    And verify grand total amount is correct
    And click on Proceed with Order button
    And verify user is on Billing Information page
    And I enter "Test User" as name
    And I enter "Market Yard" as address and "Pune" as City and "Maharashtra" as state and "12343" as Zip code
    And I enter "9999988888" as phone number and "test@gmail" as email id
    And I select "MasterCard" creditcard and enter "4111111111111111" as CC number and "01/19" as expiry date
    And I check the Ship to same as Bill address checkbox
    And I click on Place the Order button
    And verify user is on Order Confirmation Page
    And verify the credit card and Grand total amount
    And click on Return to Home page button
    And user is on GMO home page 
    And user close the browser
    