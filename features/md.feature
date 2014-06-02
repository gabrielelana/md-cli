Feature: Aruba setup works

  @ansi
  Scenario: Highligh simplest markdown
    Given a file named "headers.md" with:
      """
      # Header
      """
    When I run `md` interactively
    And I pipe in the file "headers.md"
    Then the output should contain exactly:
      """
      \e[1m\e[34m#\e[0m \e[1mHeader\e[0m\n
      """
