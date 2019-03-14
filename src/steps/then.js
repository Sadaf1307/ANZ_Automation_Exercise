
import checkEqualsText from '../support/check/checkEqualsText';
import waitForVisible from '../support/action/waitForVisible';

const { Then } = require('cucumber');

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
    checkEqualsText
);

Then(
    /^I expect that element "([^"]*)?" becomes( not)* visible$/,
    waitForVisible
);







