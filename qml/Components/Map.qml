Map {
    plugin: Plugin { name: "mapboxgl" }

    center: QtPositioning.coordinate(60.170448, 24.942046) // Helsinki
    zoomLevel: 12

    DynamicParameter {
        type: "source"

        property var name: "routeSource"
        property var sourceType: "geojson"
        property var data: '{ "type": "FeatureCollection", "features": \
            [{ "type": "Feature", "properties": {}, "geometry": { \
            "type": "LineString", "coordinates": [[ 24.934938848018646, \
            60.16830257086771 ], [ 24.943315386772156, 60.16227776476442 ]]}}]}'
    }

    DynamicParameter {
        type: "layer"

        property var name: "route"
        property var layerType: "line"
        property var source: "routeSource"

        // Draw under the first road label layer
        // of the mapbox-streets style.
        property var before: "road-label-small"
    }

    DynamicParameter {
        type: "paint"

        property var layer: "route"
        property var lineColor: "blue"
        property var lineWidth: 8.0
    }

    DynamicParameter {
        type: "layout"

        property var layer: "route"
        property var lineJoin: "round"
        property var lineCap: "round"
    }
}