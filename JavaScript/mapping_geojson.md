# Mapping & GeoJSON
Basic syntax to add a geoJSON point:

L.geoJSON(datasource).addTo(map);

If we want to add a popup to the marker:

### pointToLayer function: 
L.geoJson(data, {
    pointToLayer: function(feature, latlng) {
      return L.marker(latlng);
     }
});

### onEachFeature
