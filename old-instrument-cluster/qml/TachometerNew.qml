import QtQuick

Gauge {
    Image {
        anchors.fill: parent
        source: "images/numbers-tacho.svg"
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(1000, 1000)
    }
    Rotator {}
}
