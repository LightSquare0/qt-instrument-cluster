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

    BottomBar {}
}
