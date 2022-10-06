import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

ProgressBar {
    // implicitWidth: parent.width
    // implicitHeight: parent.height - 6

    id: progress

    property var propValue: 0.6
    property var propWidth: 220
    property var propHeight: 17
    property var propBorderWidth: 1

    value: propValue

    background: Rectangle {
        radius: 20
        color: "#414141"
        border.color: "#414141"
        border.width: propBorderWidth
        implicitWidth: propWidth
        implicitHeight: propHeight
        opacity: 0.6
    }

    contentItem: Item {
        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            width: progress.visualPosition * parent.width
            height: parent.height
            border.color: "#414141"
            border.width: propBorderWidth
            radius: 20
            color: "#FF7324"
            opacity: 0.7
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: 1
            height: parent.height - propBorderWidth * 2
            color: propValue < 0.5 && "#7B7B7B" || propValue > 0.5 && "#CECECE"
        }

    }

}
