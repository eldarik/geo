Feature: tGeoCLI
  Scenario: get geo datum for ip
    When I run `get-geo`
    Then the output should contain "Geo"
    Then the output should contain "city"
    Then the output should contain "country"
    Then the output should contain "lat"
    Then the output should contain "lon"
