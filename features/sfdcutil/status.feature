Feature: status
  In order to query the salesforce trust site
  As a CLI
  I want to be as objective as possible

  Scenario: Query for the status of a specific POD
    When I run `sfdcutil status --instance NA1`
    Then the output should contain:
      """
          Instance Status
               NA1 Instance available
      """

  Scenario: Query for the status of all PODs
    When I run `sfdcutil status`
    Then the output should contain:
      """
          Instance Status
         NA0 (SSL) Instance available
               NA1 Instance available
               NA2 Instance available
               NA3 Instance available
               NA4 Instance available
               NA5 Instance available
               NA6 Instance available
               NA7 Instance available
               NA8 Instance available
               NA9 Instance available
              NA10 Instance available
              NA11 Instance available
              NA12 Instance available
              NA13 Instance available
              NA14 Instance available
               AP0 Instance available
               AP1 Instance available
        EU0 (EMEA) Instance available
               EU1 Instance available
               EU2 Instance available
       CS0 (TAPP0) Instance available
               CS1 Instance available
               CS2 Instance available
               CS3 Instance available
               CS4 Instance available
               CS5 Instance available
               CS6 Instance available
               CS7 Instance available
               CS8 Instance available
               CS9 Instance available
              CS10 Instance available
              CS11 Instance available
              CS12 Instance available
              CS13 Instance available
              CS14 Instance available
              CS15 Instance available
              CS16 Instance available
              CS17 Instance available
      """

  Scenario: Query for the status at a given URL
    When I run `sfdcutil status --url http://trust.salesforce.com/trust/status/`
    Then the output should contain:
      """
          Instance Status
         NA0 (SSL) Instance available
               NA1 Instance available
               NA2 Instance available
               NA3 Instance available
               NA4 Instance available
               NA5 Instance available
               NA6 Instance available
               NA7 Instance available
               NA8 Instance available
               NA9 Instance available
              NA10 Instance available
              NA11 Instance available
              NA12 Instance available
              NA13 Instance available
              NA14 Instance available
               AP0 Instance available
               AP1 Instance available
        EU0 (EMEA) Instance available
               EU1 Instance available
               EU2 Instance available
       CS0 (TAPP0) Instance available
               CS1 Instance available
               CS2 Instance available
               CS3 Instance available
               CS4 Instance available
               CS5 Instance available
               CS6 Instance available
               CS7 Instance available
               CS8 Instance available
               CS9 Instance available
              CS10 Instance available
              CS11 Instance available
              CS12 Instance available
              CS13 Instance available
              CS14 Instance available
              CS15 Instance available
              CS16 Instance available
              CS17 Instance available
      """