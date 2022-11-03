import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Theme

Rectangle {

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    width: 5
    height: 100
    color: Theme.primaryOrange
    radius: 50
    layer.enabled: true

    layer.effect: DropShadow {
        transparentBorder: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 4
        color: "#C14600"
    }
}
