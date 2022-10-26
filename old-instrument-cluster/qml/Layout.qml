import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

//import InstrumentCluster
ApplicationWindow {
    id: appWindow
    property real fontSize: 0.00000680413 * Math.sqrt(
                                width * height) * Math.sqrt(width * height)
    visible: true
    //    visibility: Window.Maximized
    width: 1920
    height: 720
    color: "#232323"
    Component.onCompleted: {
        console.log(0.00000680413 * Math.sqrt(width * height))
    }

    onWidthChanged: {
        console.log(`resized window width: ${appWindow.width}\n`)
    }

    onHeightChanged: {
        console.log(`resized windows height: ${appWindow.height}\n`)
    }

    GridLayout {
        id: grid
        columns: 3
        anchors.centerIn: parent
        columnSpacing: -(appWindow.fontSize * 20)

        Row {
            TachometerNew {
                width: appWindow.fontSize * 76 - 100
                height: appWindow.fontSize * 76 - 100
            }
        }

        Row {
            Layout.alignment: Qt.AlignTop
            Layout.topMargin: -(appWindow.fontSize * 5)
            z: -1
            Image {
                id: topContainer
                source: "images/top-container.svg"
                fillMode: Image.PreserveAspectFit
                sourceSize: Qt.size(800, 400)
                width: appWindow.fontSize * 80
                height: appWindow.fontSize * 25
                RowLayout {
                    spacing: appWindow.fontSize * 10
                    anchors.centerIn: parent
                    Layout.alignment: Qt.AlignCenter
                    Fuel {
                        width: appWindow.fontSize * 28
                        height: appWindow.fontSize * 28
                    }
                    Coolant {
                        width: appWindow.fontSize * 28
                        height: appWindow.fontSize * 28
                    }
                }
            }
        }

        Row {
            SpeedometerNew {
                width: appWindow.fontSize * 76 - 100
                height: appWindow.fontSize * 76 - 100
            }
        }
    }
}
