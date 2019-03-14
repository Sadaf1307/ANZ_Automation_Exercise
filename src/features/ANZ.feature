Feature: Test the ANZ App
    As an User
    I want to be able to test the functionality of a home loan calculator

    Background:
        Given I open the site "/"

    Scenario: I should be able to get home loan estimate based on provided filters
        Then I expect that element "#q2heading" matches the text "Your earnings"
        When I click on the element "#application_type_single"
        And  I select the 0th option for element "[class='borrow__question__answer borrow__question__answer--select']"
        And  I click on the button "[for='borrow_type_home']"
        Then I set "80000" to the inputfield "[aria-describedby='q2q1i1 q2q1i2']"
        And  I set "10000" to the inputfield "[aria-describedby='q2q2i1 q2q2i2']"
        And  I set "500" to the inputfield "#expenses"
        And  I set "0" to the inputfield "#homeloans"
        And  I set "100" to the inputfield "#otherloans"
        And  I set "0" to the inputfield "[aria-describedby='q3q4i1 q3q4i2']"
        And  I set "10000" to the inputfield "#credit"
        When I click on the button "[class='btn btn--action btn--borrow__calculate']"
        And  I pause for 5000ms
        Then I expect that element "[class='borrow__result__text__amount']" matches the text "$479,000"


    Scenario: I should be able to reset the fields after I get the estimation results
        When I set "80000" to the inputfield "[aria-describedby='q2q1i1 q2q1i2']"
        And  I set "10000" to the inputfield "[aria-describedby='q2q2i1 q2q2i2']"
        And  I set "500" to the inputfield "#expenses"
        And  I set "10000" to the inputfield "#credit"
        When I click on the button "[class='btn btn--action btn--borrow__calculate']"
      #  And  I pause for 5000ms
        Then I expect that element "[class='icon icon_restart']" becomes visible
        And  I click on the element "[class='icon icon_restart']"
        Then I expect that element "#application_type_single" matches the text "S"
        And  I expect that element "[for='borrow_type_home']" matches the text "Home to live in"
        And  I expect that element "[aria-describedby='q2q1i1 q2q1i2']" matches the text "0"
        And  I expect that element "[aria-describedby='q2q2i1 q2q2i2']" matches the text "0"
        And  I expect that element "#expenses" matches the text "0"
        And  I expect that element "#credit" matches the text "0"


    Scenario: Get the correct estimate/message when entering $1 living expense leaving other fields as 0
        When I set "1" to the inputfield "#expenses"
        And  I click on the button "[class='btn btn--action btn--borrow__calculate']"
        Then I expect that element "[class='borrow__error__text']" matches the text "Based on the details you've entered, we're unable to give you an estimate of your borrowing power with this calculator. For questions, call us on 1800 100 641."




