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
  name: 'Avg Ticket Price',
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
  y: [46440	,
43979	,
36236	,
41040	,
46216	,
46695	,
46479	,
45719	,
46492

],
  name: 'Avg Attendance',
  yaxis: 'y2',
  type: "line"
};

var data = [trace1, trace2];

var layout = {
  title: "Dodgers Ticket Prices vs Attendance",
  yaxis: {title: 'Avg Ticket Price ($)'},
  yaxis2: {
   title: 'Avg Attendance (Thousands)',
   titlefont: {color: 'rgb(148, 103, 189)'},
   tickfont: {color: 'rgb(148, 103, 189)'},
   overlaying: 'y',
   side: 'right'
 }
};

Plotly.newPlot("plot", data, layout);
