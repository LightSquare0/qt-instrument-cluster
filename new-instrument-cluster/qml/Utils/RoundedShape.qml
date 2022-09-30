import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

Shape {
    id: advancedShape

    // set following properties to specify radius
    property real tlRadius: 60
    property real trRadius: 60
    property real brRadius: 0
    property real blRadius: 0

    width: mainControl.width
    height: mainControl.height
    vendorExtensionsEnabled: true
    layer.enabled: true
    layer.samples: 4
    layer.smooth: true

    ShapePath {
        strokeColor: "transparent"
        fillColor: Qt.hsla(0, 0, 0.13, 0.6)
        startX: 0
        startY: advancedShape.tlRadius

        PathArc {
            x: advancedShape.tlRadius
            y: 0
            radiusX: advancedShape.tlRadius
            radiusY: advancedShape.tlRadius
            useLargeArc: false
        }

        PathLine {
            x: advancedShape.width - advancedShape.trRadius
            y: 0
        }

        PathArc {
            x: advancedShape.width
            y: advancedShape.trRadius
            radiusX: advancedShape.trRadius
            radiusY: advancedShape.trRadius
            useLargeArc: false
        }

        PathLine {
            x: advancedShape.width
            y: advancedShape.height - advancedShape.brRadius
        }

        PathArc {
            x: advancedShape.width - advancedShape.brRadius
            y: advancedShape.height
            radiusX: advancedShape.brRadius
            radiusY: advancedShape.brRadius
            useLargeArc: false
        }

        PathLine {
            x: advancedShape.blRadius
            y: advancedShape.height
        }

        PathArc {
            x: 0
            y: advancedShape.height - advancedShape.blRadius
            radiusX: advancedShape.blRadius
            radiusY: advancedShape.blRadius
            useLargeArc: false
        }

        PathLine {
            x: 0
            y: advancedShape.tlRadius
        }

    }

}
