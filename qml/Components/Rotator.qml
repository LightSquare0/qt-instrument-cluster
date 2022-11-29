import "../Components"
import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import Theme

Rectangle {
    id: rotator

    function degreeFromValue(val, minValue, maxValue) {
        let a = (300 - 60) / (maxValue - minValue);
        let b = -a * minValue + 60;
        return a * val + b;
    }

    function rotationByType() {
        if (base.type == "speedometer")
            return degreeFromValue(Vehicle.speed, 10, 250);
        else
            return degreeFromValue(Vehicle.rpm, 0, 6000);
    }

    color: "transparent"
    anchors.centerIn: parent
    width: parent.width - 20
    height: parent.height - 20
    Component.onCompleted: state = "booting"
    states: [
        State {
            name: "booting"

            PropertyChanges {
                target: rotator
            }

        },
        State {
            name: "ready"

            PropertyChanges {
                target: rotator
                rotation: rotationByType()
            }

        }
    ]
    transitions: [
        Transition {
            to: "booting"
            onRunningChanged: {
                if (!running)
                    rotator.state = "ready";

            }

            SequentialAnimation {
                NumberAnimation {
                    target: rotator
                    property: "rotation"
                    from: 50
                    to: 300
                    duration: 1500
                }

                NumberAnimation {
                    target: rotator
                    property: "rotation"
                    to: 60
                    duration: 1000
                }

            }

        }
    ]

    Needle {
        id: needle
    }

    Image {
        anchors.margins: 64
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "qrc:/resources/images/Shadow.png"
        rotation: -90
    }

    Behavior on rotation {
        SpringAnimation {
            spring: 0.4
            damping: 0.15
        }

    }

}
