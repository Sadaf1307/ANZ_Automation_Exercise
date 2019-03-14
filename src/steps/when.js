import clearInputField from '../support/action/clearInputField';
import clickElement from '../support/action/clickElement';

import pause from '../support/action/pause';

import selectOptionByIndex from '../support/action/selectOptionByIndex';
import setInputField from '../support/action/setInputField';


const { When } = require('cucumber');


When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I clear the inputfield "([^"]*)?"$/,
    clearInputField
);



When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I select the (\d+)(st|nd|rd|th) option for element "([^"]*)?"$/,
    selectOptionByIndex
);

