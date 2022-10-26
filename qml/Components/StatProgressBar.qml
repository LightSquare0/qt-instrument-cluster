import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import Theme

RowLayout {
    property string imgSource
    property var propValue: 0.6
    property var propWidth: 220
    property var propHeight: 17
    property var propBorderWidth: 1

    spacing: 5

    Image {
        source: imgSource
        fillMode: Image.PreserveAspectFit
        sourceSize.width: 32
        sourceSize.height: 32
        width: 26
        height: 26
    }

    ProgressBar {
        id: progress

        value: propValue

        background: Rectangle {
            radius: 20
            color: Theme.secondaryGray
            border.color: Theme.secondaryGray
            border.width: propBorderWidth
            implicitWidth: propWidth
            implicitHeight: propHeight
            opacity: 0.6
        }

        contentItem: Item {
            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                width: progress.visualPosition * parent.width
                height: parent.height
                border.color: Theme.secondaryGray
                border.width: propBorderWidth
                radius: 20
                color: Theme.primaryOrange
                opacity: 0.7
            }

            Rectangle {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 1
                height: parent.height - propBorderWidth * 2
                color: propValue < 0.5 && "#7B7B7B" || propValue > 0.5 && "#CECECE"
            }

        }

    }

}
