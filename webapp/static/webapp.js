/*
 * webapp.js
 * James Berger, Aldo Polanco, Alex Widman
 * Nov 9th, 2022
 * Updated, Nov 9th, 2022
 */

window.onload = initialize;

function initialize() {
    var element = document.getElementById('contestants_button');
    if (element) {
        element.onclick = loadContestantsSelector;
    }
    var element = document.getElementById('find_link');
    if (element) {
        element.onclick = onFindLinkButton;

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
    var element = document.getElementById('contestant_search_text')
    if (element) {
        url += '?name=' + element.value;
    }

    // Send the request to the survivor API /contestants/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of contestant dictionaries).
    .then((response) => response.json())

    // Once you have your list of contestant dictionaries, use it to build
    // an HTML table displaying the contestant name, age, and season.
    .then(function(contestants) {
        // Add the <option> elements to the <select> element
        var tableBody = '';
        for (var k = 0; k < contestants.length; k++) {
            let contestant = contestants[k];
            tableBody += '<tr>'
                            + '<td>' + contestant['contestant_name'] + '</td>'
                            + '<td>' + contestant['age'] + '</td>'
                            + '<td>' + contestant['hometown'] + '</td>'
                            + '<td>' + contestant['occupation'] + '</td>'
                            + '<td>' + contestant['season_name'] + '</td>'
                            + '</tr>\n';
        }

        let contestantTable = document.getElementById('contestants_table');
        if (contestantTable) {
            contestantTable.innerHTML = tableBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onFindLinkButton() {
    var url = getAPIBaseURL() + '/connections/';
    var element1 = document.getElementById('source');
    var element2 = document.getElementById('target');
    if (!element1 || !element2) {
        return;
    }

    url += '?source=' + element1.value;
    url += '&target=' + element2.value;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(path) {
        var listBody = '';
        for (var k = 0; k < path.length; k++) {
            var contestant = path[k];
            listBody += '<li>' + contestant
                      + '</li>\n';
        }

        var pathElement = document.getElementById('path');
        if (pathElement) {
            pathElement.innerHTML = listBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });

}
window.onload = initalize;
