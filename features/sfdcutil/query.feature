Feature: query
  In order to query the salesforce objects
  As a CLI
  I want to be able to query a specified object using SOQL

  Scenario: Execute a SOQL query
    When I run `sfdcutil object:query "SELECT Id, Name, Description, CreatedBy, LastModifiedBy, Owner FROM Account"`
    Then the output should contain:
    """
    FIXME
    """

#    Given There are more than 100 objects that would be returned by a query
#   And I have executed a query without limiting the number of objects that should be returned
  Scenario: Execute a SOQL query for a large number of objects without limits
    When I run `sfdcutil object:query "SELECT Id, Name, Description, CreatedBy, LastModifiedBy, Owner FROM Account"`
    Then the output should contain:
    """
    FIXME
    """

#    Given There are more than 100 objects that would be returned by a query
#    And I have executed a query
  Scenario: Execute a SOQL query for a large number of objects with limits
    When I run `sfdcutil object:query --limit 10 "SELECT Id, Name, Description, CreatedBy, LastModifiedBy, Owner FROM Account"`
    Then the output should contain:
    """
    FIXME
    """

#    Given There are more than 100 objects that would be returned by a query
#    And I have executed a query
  Scenario: Execute a SOQL query for a large number of objects with limits
    When I run `sfdcutil object:query -l 10 "SELECT Id, Name, Description, CreatedBy, LastModifiedBy, Owner FROM Account"`
    Then the output should contain:
    """
    FIXME
    """

  Scenario: List the objects
    When I run `sfdcutil object:list`
    Then the output should contain:
    """
    FIXME
    """

  Scenario: List the objects
    When I run `sfdcutil object:list --standard`
    Then the output should contain:
    """
    FIXME
    """

  Scenario: List the objects
    When I run `sfdcutil object:list -s`
    Then the output should contain:
    """
    FIXME
    """

  Scenario: List the objects
    When I run `sfdcutil object:list --custom`
    Then the output should contain:
    """
    FIXME
    """

  Scenario: List the objects
    When I run `sfdcutil object:list -c`
    Then the output should contain:
    """
    FIXME
    """

#sfdcutil object:query [-l|--limit #] Object "SOQL"
#sfdcutil object:list [-s|--standard] [-c|--custom]