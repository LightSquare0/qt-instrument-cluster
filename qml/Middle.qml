// Control {
//     width: 200
//     height: 150
//     contentItem: Flow {
//         Button {
//             text: "samp"
//         }
//         Button {
//             text: "samp"
//         }
//         Button {
//             text: "samp"
//         }
//         Button {
//             text: "samp"
//         }
//     }
//     background: Utils.Triangle {
//     }
// }

import "./Utils" as Utils
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes

PathView {
    width: 400
    height: 400
    anchors.centerIn: parent

    model: ListModel {
        ListElement {
            name: "element1"
        }

        ListElement {
            name: "element2"
        }

        ListElement {
            name: "element3"
        }

        ListElement {
            name: "element4"
        }

        ListElement {
            name: "element5"
        }

        ListElement {
            name: "element6"
        }

        ListElement {
            name: "element7"
        }

        ListElement {
            name: "element8"
        }

    }

    delegate: Rectangle {
        width: 40
        height: 40
        radius: 20
        color: "blue"

        Text {
            text: name
            anchors.centerIn: parent
            transform: [
                Translate {
                    y: -30
                }
            ]
        }

    }

    path: Path {
        id: myPath

        startX: 0
        startY: 0

        PathSvg {
            path: "M 200 200 m -200 0 a 200 200 0 1 0 400 0 a 200 200 0 1 0 -400 0"
        }

    }

}
