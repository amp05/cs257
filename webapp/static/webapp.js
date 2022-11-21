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
    var element = document.getElementById('diversity');
    if (element) {
        element.onclick = onDiversityButton;

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

        tablehead = '<thead>'
                        + '<tr class = "table-headers">'
                            + '<th> Contestant Name </th>'
                            + '<th> Age when Featured </th>'
                            + '<th> Hometown </th>'
                            + '<th> Occupation </th>'
                            + '<th> Season Number </th>'
                        + '</tr>'
                    + '</thead>'
                        
        let contestantTable = document.getElementById('contestants_table');
        if (contestantTable) {
            contestantTable.innerHTML = tablehead+ tableBody;
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

function onDiversityButton() {
    var url = getAPIBaseURL() + '/diversity/';
    var element1 = document.getElementById('seasons');
    if (!element1) {
        return;
    }

    url += '?seasons=' + element1.value;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(seasons) {
        var xValues = ['African American', 'Asian American', 'Latin American', 'Total POC', 'Total'];
        var yValues = [0,0,0,0,0]
        for (var k = 0; k < seasons.length; k++) {
            var season = seasons[k];
            yValues[0] += season['african_american']
            yValues[1] += season['asian_american']
            yValues[2] += season['latin_american']
            yValues[3] += season['total_poc']
            yValues[4] += season['total']
        }
        if (typeof chart !== 'undefined') {
            chart.destroy()
        }
        var barColors = "red";
        chart = new Chart("graph", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
            backgroundColor: barColors,
            data: yValues
            }]
        },
        options: {
            legend: {display: false},
            scales: {
                yAxes: [{
                    display: true,
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
          }
        });
    })

    .catch(function(error) {
        console.log(error);
    });

}

window.onload = initalize;
