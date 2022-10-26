import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Layouts
import Theme

Item {
    id: item

    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    layer.enabled: true

    Rectangle {
        id: mask

        width: item.width
        height: item.height
        radius: width * 0.5
        visible: false
    }

    layer.effect: OpacityMask {
        maskSource: mask
    }

}
