import QtQuick 2.0

Item {
    property bool on: false
    id: rotator
    width: parent.width
    height: parent.height

    Image {
        id: center
        width: parent.width * 0.09
        height: parent.height * 0.09
        anchors.centerIn: parent
        source: "images/center.svg"
        sourceSize: Qt.size(100, 100)
        fillMode: Image.PreserveAspectFit
    }

    Component.onCompleted: state = "booting"
    Behavior on rotation {
        SpringAnimation {
            spring: 0.4
            damping: .15
        }
    }

    states: [
        State {
            name: "booting"
            PropertyChanges {
                target: rotator
                on: false
            }
        },
        State {
            name: "ready"
            PropertyChanges {
                target: rotator
                on: true
                rotation: _rotator.rotation
            }
        }
    ]
    transitions: [
        Transition {
            to: "booting"
            SequentialAnimation {
                NumberAnimation {
                    target: rotator
                    property: "rotation"
                    to: 210
                    duration: 1500
                }
                NumberAnimation {
                    target: rotator
                    property: "rotation"
                    to: -40
                    duration: 1000
                }
            }

            onRunningChanged: {
                if (!running) {
                    console.log("ready")
                    rotator.state = "ready"
                }
            }
        }
    ]

    Image {

        id: needle_1
        //        x: -263
        //        y: 146
        width: parent.width * 0.4
        height: parent.height * 0.4
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -(width / 2) - center.width / 2 + 1
        source: "images/needle.svg"
        antialiasing: true
        sourceSize.height: 7
        //        rotation: 322.009
        fillMode: Image.PreserveAspectFit
    }
}
