import "../Utils"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Layouts
import Theme

Item {
    property string type: "speedometer"

    Text {
        text: centerWidget.parent.type == "speedometer" ? Vehicle.speed : Vehicle.rpm
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
