import QtQuick 2.15
import QtQuick.Controls 2.15
//import Qt5Compat.GraphicalEffects
//import QtQuick.Timeline
//import QtQuick.Studio.Effects 1.0
//import QTimeline

Item {
    width: 800
    height: 800

    Image {
        id: gauge
        x: 0
        y: 0
        width: 800
        height: 800
        source: "images/gauge-speedo.svg"
        layer.enabled: true
//        layer.effect: DropShadowEffect {
//            id: dropShadow
//            color: "#75000000"
//            verticalOffset: 0
//            horizontalOffset: 0
//        }
        antialiasing: true
        sourceSize.height: 800
        sourceSize.width: 800
        fillMode: Image.PreserveAspectFit



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
                    id: needle_1
                    x: -263
                    y: 146
                    source: "images/needle.svg"
                    antialiasing: true
                    sourceSize.height: 7
                    rotation: 322.009
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }

//    Timeline {
//        id: speedoTimeline
//        animations: [
//            TimelineAnimation {
//                id: timelineAnimation
//                pingPong: true
//                running: true
//                duration: 1000
//                loops: 1
//                to: 2500
//                from: 0
//            }
//        ]
//        startFrame: 0
//        endFrame: 2500
//        enabled: true

//        KeyframeGroup {
//            target: rotator
//            property: "rotation"
//            Keyframe {
//                frame: 0
//                value: "-2"
//            }

//            Keyframe {
//                frame: 2500
//                value: "248"
//            }
//        }
//    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:5}D{i:4}D{i:3}D{i:1}D{i:6}
}
##^##*/
