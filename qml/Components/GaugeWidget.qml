import "../Widgets"
import "../Components"
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

    // BigMeter{}

    WidgetLoader {
    }

    layer.effect: DropShadow {
        transparentBorder: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8
        color: "#0f0f0f"
    }

}
