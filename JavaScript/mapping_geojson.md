# Mapping & GeoJSON
Basic syntax to add a geoJSON point:

L.geoJSON(datasource).addTo(map);

If we want to add a popup to the marker:

### pointToLayer function: 
L.geoJson(datasource, {
    pointToLayer: function(feature, latlng) {
      return L.marker(latlng);
     }
});

### onEachFeature
L.geoJSON(datasource, {
    onEachFeature: function(feature, layer) {
        console.log(layer);

## Map-making steps:
#### STEP 0. Get the data
- queryUrl(API) or local data file.
d3.json(queryUrl or data).then(function(data) {
  console.log(data);
})

#### STEP 1. Initialize the base layers for the map (log the data in console to make sure it's loaded in)
- var streetmap = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 18,
      id: 'mapbox/streets-v11',
      accessToken: API_KEY
  });

#### STEP 2. Make overlay layers
- examples:
var earthquakeLayer = L.geoJSON(features, {
      onEachFeature: onEachFeature
  });

d3.json(airportData).then(function(data) {
  console.log(data);
  
#### STEP 3. Create dictionaries for layers
- var baseMaps = {
      "Street Map": streetmap,
      "Dark Map": darkmap
  };
var overlayMaps = {
      "Earthquakes": earthquakeLayer
  };

#### STEP 4. Initialize the map
- let map = L.map("map" <-- THIS IS THE HTML TAG IN THE INDEX FILE BODY, {
  center: [30, 30],
  zoom: 2,
  layer: [streets]
});

#### STEP 5. Layer control
- L.control.layers(baseMaps, overlayMaps).addTo(map);