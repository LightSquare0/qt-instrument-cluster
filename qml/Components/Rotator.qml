import "../Components"
import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import Theme

Rectangle {

    function degreeFromValue(val, minValue, maxValue)
    {
        let a = (300 - 60) / (maxValue - minValue);
        let b = -a*minValue + 60;
        return a * val + b;
    }

    id: rotator
    color: "transparent"
    anchors.centerIn: parent
    width: parent.width - 20
    height: parent.height - 20
    rotation: base.type == "speedometer" ? degreeFromValue(Vehicle.speed, 10, 250) : degreeFromValue(Vehicle.rpm, 0, 6000)
    
    Needle {
        id: needle
    }

    Image {
        anchors.margins: 64
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "qrc:/resources/images/Shadow.png"
        rotation: -90
    }

}