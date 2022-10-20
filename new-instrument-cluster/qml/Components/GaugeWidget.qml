import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Layouts
import Theme

Rectangle {
    id: centerWidget

    width: 320
    height: 320
    radius: width * 0.5
    color: Theme.secondaryDarkGray
    anchors.centerIn: parent
    layer.enabled: true

    Item {
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        Text {
            text: centerWidget.parent.type == "speedometer" ? "84" : "1925"
            font.pixelSize: 96
            font.weight: 400
            color: Theme.primaryOrange
            anchors.centerIn: parent
        }

        Text {
            text: centerWidget.parent.type == "speedometer" ? "km/h" : "rpm"
            font.pixelSize: 24
            color: Theme.primaryOrange
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 40
        }

    }

    layer.effect: DropShadow {
        transparentBorder: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8
        color: "#0f0f0f"
    }

}
