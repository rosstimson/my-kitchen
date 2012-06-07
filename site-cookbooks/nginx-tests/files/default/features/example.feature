@webserver
Feature: Web server

Scenario: Nginx configuration check
  When I successfully run `ps aux`
  Then the output should contain "nginx"
