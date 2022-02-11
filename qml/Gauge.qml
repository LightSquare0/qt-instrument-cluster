import QtQuick

Item {
    antialiasing: true
    Image {
        anchors.fill: parent
        id: gaugeImage
        source: "images/gauge.svg"
        sourceSize: Qt.size(1000, 1000)
        fillMode: Image.PreserveAspectFit
    }
    //    Rectangle {
    //        width: parent.width
    //        height: parent.height
    //        color: "#ff1100"
    //        opacity: 0.5
    //    }
}
