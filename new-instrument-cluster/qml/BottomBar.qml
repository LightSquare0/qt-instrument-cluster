import "./Components" as Components
import "./Utils" as Utils
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
        spacing: 20

        Components.Stat {
            id: trip

            imgSource: "qrc:/resources/icons/trip.svg"
            value: "1263"
            type: "km"
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.rightMargin: 100
            Layout.leftMargin: 100
            spacing: 20

            Components.StatProgressBar {
                id: coolantTemp

                imgSource: "qrc:/resources/icons/thermostat.svg"
                propValue: 0.3
            }

            Components.StatProgressBar {
                id: gasLevel

                imgSource: "qrc:/resources/icons/gas.svg"
                propValue: 0.8
            }

        }

        Components.Stat {
            id: odometer

            imgSource: "qrc:/resources/icons/odometer.svg"
            value: "255968"
            type: "km"
        }

    }

}
