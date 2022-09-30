import "../qml/Utils" as Utils
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

ApplicationWindow {
    id: appWindow

    visible: true
    width: 1920
    height: 720

    Image {
        anchors.fill: parent
        source: "qrc:/resources/images/MainGradient.png"
    }

    Utils.Rectanglec {}

    Control {
        id: mainControl

        topPadding: 7
        bottomPadding: 7
        leftPadding: 50
        rightPadding: 50
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        background: Utils.RoundedShape {}

        contentItem: Row {
            spacing: 20

            Row {
                spacing: 6

                Text {
                    text: "1263"
                    font.pixelSize: 36
                    color: Qt.hsla(0, 0, 0.93, 1)
                }

                Text {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                    text: "km"
                    font.pixelSize: 24
                    color: Qt.hsla(0, 0, 0.6, 1)
                }

            }

            Text {
                text: "San Andreas Multiplayer"
                font.pixelSize: 36
                color: Qt.hsla(0, 0, 0.93, 1)
            }

        }

    }

}
