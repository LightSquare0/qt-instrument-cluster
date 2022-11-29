import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes

Shape {
    width: 200
    height: 150
    anchors.centerIn: parent

    ShapePath {
        strokeWidth: 4
        strokeColor: "red"
        strokeStyle: ShapePath.DashLine
        dashPattern: [1, 4]
        startX: 20
        startY: 20

        PathLine {
            x: 180
            y: 130
        }

        PathLine {
            x: 20
            y: 130
        }

        PathLine {
            x: 20
            y: 20
        }

    }

}
