import QtQuick
import QtQuick.Layouts

RowLayout {
    property var imgSource
    property var value
    property var type

    // Layout.alignment: Qt.AlignVCenter
    spacing: 6

    Image {
        source: imgSource
        fillMode: Image.PreserveAspectFit
        sourceSize.width: 32
        sourceSize.height: 32
        width: 26 
        height: 26
    }

    Text {
        text: value
        font.pixelSize: 36
        color: Qt.hsla(0, 0, 0.93, 1)
    }

    Text {
        Layout.alignment: Qt.AlignBottom
        bottomPadding: 3
        text: type
        font.pixelSize: 24
        color: Qt.hsla(0, 0, 0.6, 1)
    }

}
