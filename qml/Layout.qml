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
        columns: 1
        width: parent.width
        height: parent.height

        //        Speedometer {
        //            id: speedometer
        //            x: 1052
        //            y: 140
        //        }
        //        Tachometer {
        //            id: tachometer
        //            x: 50
        //            y: 140
        //        }
        Row {
            Layout.alignment: Qt.AlignCenter
            TachometerNew {
                width: appWindow.fontSize * 76
                height: appWindow.fontSize * 76
                //                Rectangle {
                //                    width: parent.width
                //                    height: parent.height
                //                    color: "blue"
                //                }
            }

            SpeedometerNew {
                width: appWindow.fontSize * 75
                height: appWindow.fontSize * 76
                //                Rectangle {
                //                    width: parent.width
                //                    height: parent.height
                //                    color: "red"
                //                }
            }
        }
    }
}
