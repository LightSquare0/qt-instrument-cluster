import "../Components"
import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Theme

Item {
    id: rotator

    anchors.centerIn: parent
    width: parent.width - 20
    height: parent.height - 20
    rotation: -100
    Needle {
    }

}
