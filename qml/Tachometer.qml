import QtQuick 2.0
import Qt5Compat.GraphicalEffects

Item {
    width: 800
    height: 800

    Image {
//        FontLoader { id: renaultLife; source: "fonts/RenaultLife-BoldItalic.ttf" }
        id: gauge
//        width: 800
//        height: 800
        source: "images/gauge-tacho.svg"
        sourceSize: Qt.size(parent.width, parent.height)
        layer.enabled: true
        layer.effect: DropShadow {
            id: dropShadow
            color: "#75000000"
            verticalOffset: 0
            horizontalOffset: 0
        }
        antialiasing: true
        fillMode: Image.PreserveAspectFit

        Image {
            anchors.centerIn: gauge
            id: numbers
            source: "images/Numbers.svg"
            antialiasing: true
//            sourceSize.height: 7
            fillMode: Image.PreserveAspectFit

            ColorOverlay{
                   anchors.fill: numbers
                   source: numbers
                   color: "#f85c1d"
                   antialiasing: true
               }
        }


        Glow {
               anchors.fill: numbers
               radius: 10
               spread: 0.5
    //           samples: 17
               color: "#f85c1d"
               source: numbers
           }

        Image {
            id: center
            x: 365
            y: 365
            source: "images/center.svg"
            fillMode: Image.PreserveAspectFit

            Item {
                property bool on: false
                id: rotator
                x: 0
                y: 0
                width: 70
                height: 70
                Component.onCompleted: state = "booting"
                Behavior on rotation {
                    SpringAnimation {
                        spring: 0.4
                        damping: .15
                    }
                }

                states: [
                    State {
                        name: "booting";
                        PropertyChanges {
                            target: rotator
                            on: false
                        }
                    },
                    State {
                        name: "ready";
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
                                NumberAnimation { target: rotator; property: "rotation"; to: 250; duration: 1500 }
                                NumberAnimation { target: rotator; property: "rotation"; to: 0; duration: 1000 }
                        }

                        onRunningChanged: {
                            if (!running){
                               rotator.state = "ready";
                            }
                        }
                    }
                ]


                Image {
                    id: needle
                    x: -263
                    y: 146
                    source: "images/needle.svg"
                    antialiasing: true
                    sourceSize.height: 7
                    rotation: 322.009
                    fillMode: Image.PreserveAspectFit
                }

                DropShadow {
                        anchors.fill: needle
                        horizontalOffset: 3
                        verticalOffset: 3
                        radius: 2.0
                        spread: 0
//                        samples: 17
                        color: "#80000000"
                        rotation: 322.009
                        source: needle
                    }

            }
        }
    }

//    Glow {
//           anchors.fill: gauge
//           radius: 8
////           samples: 17
//           color: "#f85c1d"
//           source: gauge
//       }
}
