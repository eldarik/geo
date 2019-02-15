Feature: GetGeoCLI
  Scenario: get geo datum for ip
    When I run `get-geo`
    Then the output should contain "City"
