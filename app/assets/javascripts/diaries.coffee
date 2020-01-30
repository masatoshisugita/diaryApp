# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.draw_graph = ->
    ctx = document.getElementById("myChart").getContext('2d')
    barNum = 7
    labels = new Array(barNum)
    bgColors = new Array(barNum)
    bdColors = new Array(barNum)
    for i in [0...barNum]
        labels[i] = gon.label[i]
        bgColors[i] = 'rgba(75, 192, 192, 0.2)'
        bdColors[i] = 'rgba(75, 192, 192, 1)'
    myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels
            datasets: [{
                label: 'Your Weight',
                data: gon.data,
                fill: false,
                backgroundColor: bgColors,
                borderColor: bdColors,
                borderWidth: 1
                lineTension: 0
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        max: 66,
                        min: 50,
                        stepSize: 2
                    }
                }]
            }
        }
    })
