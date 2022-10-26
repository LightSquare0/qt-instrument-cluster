import "./Components"
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Control {
    function handleKeys(event) {
        if (event.key == Qt.Key_Left) {
            speedometer.focused = true;
            tachometer.focused = false;
        }
        if (event.key == Qt.Key_Right) {
            speedometer.focused = false;
            tachometer.focused = true;
        }
    }

    anchors.centerIn: parent

    contentItem: RowLayout {
        Keys.onPressed: handleKeys(event)

        Gauge {
            id: speedometer

            focused: true
            type: "speedometer"
        }

        Gauge {
            id: tachometer

            focused: false
            type: "tachometer"
        }

    }

}
