import "./Components"
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Control {
    anchors.centerIn: parent

    contentItem: RowLayout {
        Gauge {
            type: "speedometer"
        }

        Gauge {
            type: "tachometer"
        }

    }

}
