import QtQuick
import QtQuick.Controls
import InstrumentCluster

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    color: "red"

Rectangle {
    width: Constants.width
    height: Constants.height
    color: "#232323"

     Speedometer {
        id: speedometer
        x: 1052
        y: 140
    }
}
}

