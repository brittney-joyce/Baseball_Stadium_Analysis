var trace1 = {
  x: [2009	,
2010	,
2011	,
2012	,
2013	,
2014	,
2015	,
2016	,
2017
],
  y: [29.66	,
29.66	,
30.59	,
23.22	,
22.37	,
25.8	,
28.61	,
31.9	,
41.13
],
  name: 'Average Dodgers Ticket Price ($)',
  type: "bar"
};


var trace2 = {
  x: [2009	,
2010	,
2011	,
2012	,
2013	,
2014	,
2015	,
2016	,
2017
],
  y: [26.64	,
26.74	,
26.91	,
26.98	,
27.48	,
27.93	,
29.94	,
31	,
32.44
],
  name: 'Average MLB Ticket Price ($)',
  type: "bar"
};

var data = [trace1, trace2];

var layout = {
  title: "Dodgers Ticket Prices vs Overall MLB Average Price",
  yaxis: {title: 'Ticket Price ($)'},
  xaxis: {title: 'Year'},
};

Plotly.newPlot("plot", data, layout);
