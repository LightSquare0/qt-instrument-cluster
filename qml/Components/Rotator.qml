import "../Components"
import "../Utils"
import "../Widgets"
import Qt5Compat.GraphicalEffects
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Theme

Item {

    function degreeFromValue(val, minValue, maxValue)
    {
        let a = (300 - 60) / (maxValue - minValue);
        let b = -a*minValue + 60;
        return a * val + b;
    }

    id: rotator

    anchors.centerIn: parent
    width: parent.width - 20
    height: parent.height - 20
    rotation: base.type == "speedometer" ? degreeFromValue(Vehicle.speed, 10, 250) : degreeFromValue(Vehicle.rpm, 0, 6000)
    Needle {
    }

}
