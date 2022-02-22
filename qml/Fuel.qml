import QtQuick 2.0

SmallGauge {
    Image {
        anchors.fill: parent
        source: "images/fuel-markings.svg"
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(400, 400)
    }

    Rotator {}
}
