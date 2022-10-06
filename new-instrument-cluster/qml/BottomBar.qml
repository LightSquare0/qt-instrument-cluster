import "../qml/Components" as Components
import "../qml/Utils" as Utils
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes

Control {
    id: mainControl

    topPadding: 7
    bottomPadding: 7
    leftPadding: 50
    rightPadding: 50
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter

    background: Utils.RoundedShape {
    }

    contentItem: RowLayout {
        Layout.alignment: Qt.AlignVCenter
        spacing: 20

        Components.Stat {
            id: trip

            imgSource: "qrc:/resources/icons/trip.svg"
            value: "1263"
            type: "km"
        }

        Components.StatProgressBar {
            id: coolantTemp

            propValue: 0.8
        }

        Components.StatProgressBar {
            id: gasLevel 

            propValue: 0.8
        }

        Components.Stat {
            id: odometer

            imgSource: "qrc:/resources/icons/odometer.svg"
            value: "255968"
            type: "km"
        }

    }

}
