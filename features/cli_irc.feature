@ircserver
Feature: command line IRC management
    In order that Consenso's IRC presence can be controlled easily
    As a CLI user
    I want to be able to ask Consenso to go online and offline

    Scenario: Have mock IRC server
        Given a mock IRC server on localhost:4567
        Then the mock IRC server should output 'Running on port 4567, localhost'

    Scenario: Go online
        Given a mock IRC server on localhost:4567
        When I type 'consensobot go_online "irc://localhost:4567/#test"'
        Then the mock IRC server should output 'consensobot joined #test'
        And the mock IRC server should not output 'consensobot left #test'

    Scenario: Go offline
        Given a mock IRC server on localhost:4567
        When I type 'consensobot go_online "irc://localhost:4567/#test2"'
        When I type 'consensobot go_offline "irc://localhost:4567/#test2"'
        Then the mock IRC server should output 'consensobot left #test2'