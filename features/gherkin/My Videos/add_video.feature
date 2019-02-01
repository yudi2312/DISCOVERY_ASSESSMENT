Feature: Add Recommended Videos to My Video Section

  Scenario: Verify user is able to add recommended videos my video section
    Given the user is on the home page
    When the user adds 2 recommended videos to favorites
    And the user clicks on menu icon
    And the user clicks on my videos tab
    And the user navigates to the my videos page
    Then favorite videos should be displayed in the favorite shows section