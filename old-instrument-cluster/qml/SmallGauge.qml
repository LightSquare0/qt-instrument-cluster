import QtQuick 2.0

Item {
    antialiasing: true
    Image {
        anchors.fill: parent
        id: gaugeImage
        source: "images/small-gauge.svg"
        sourceSize: Qt.size(400, 400)
        fillMode: Image.PreserveAspectFit
    }
}
