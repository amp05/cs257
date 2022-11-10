/*
 * webapp.js
 * James Berger, Aldo Polanco, Alex Widman
 * Nov 9th, 2022
 * Updated, Nov 9th, 2022
 */

window.onload = initialize;

function initialize() {
    loadContestantsSelector();

    let element = document.getElementById('contestant_selector');
    if (element) {
        element.onchange = onAuthorsSelectionChanged;
    }
}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadContestantsSelector() {
    let url = getAPIBaseURL() + '/contestants/';

    // Send the request to the survivor API /contestants/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of contestant dictionaries).
    .then((response) => response.json())

    // Once you have your list of contestant dictionaries, use it to build
    // an HTML table displaying the contestant name, age, and season.
    .then(function(contestants) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < contestants.length; k++) {
            let contestant = contestants[k];
            selectorBody += '<option value="' + contestant['id'] + '">'
                                + contestant['contestant_name'] + ', ' + contestant['age'] + ', from ' + contestant['hometown']
                                + '</option>\n';
        }

        let selector = document.getElementById('contestant_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}