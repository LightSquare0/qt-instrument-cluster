import QtQuick

Gauge {
    Image {
        anchors.fill: parent
        source: "images/numbers-speedo.svg"
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(1000, 1000)
    }

    Rotator {}
}
