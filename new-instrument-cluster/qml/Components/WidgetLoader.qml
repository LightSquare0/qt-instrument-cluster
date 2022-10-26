import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Theme

FilledItem {
    SwipeView {
        id: view

        orientation: Qt.Vertical
        currentIndex: 0
        anchors.fill: parent

        BigMeter {
        }

        TripComputer {
        }

    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
