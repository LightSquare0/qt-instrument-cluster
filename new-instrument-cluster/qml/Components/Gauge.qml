import QtQuick
import QtQuick.Layouts
import Theme

Rectangle {
    id: base

    property int steps: 20

    width: 520
    height: 520
    radius: width * 0.5
    color: Theme.primaryDarkGray

    Item {
        property double minimum: Math.min(base.width, base.height)

        anchors.centerIn: parent
        width: minimum
        height: minimum

        Repeater {
            id: repeater

            function calcAngleDegrees(x, y) {
                return Math.atan2(y, x) * 180 / Math.PI;
            }

            model: steps

            delegate: Rectangle {
                color: "orange"
                width: 1
                height: 20
                antialiasing: true
                //2 x arcsin (0.5 x |P1 - P2| / radius)
                rotation: index * (360 / steps)
                x: 0.5 * base.width + 0.5 * (base.width - width) * Math.sin(2 * Math.PI / repeater.count * index) - 0.5 * width
                y: 0.5 * base.height - 0.5 * (base.height - height) * Math.cos(2 * Math.PI / repeater.count * index) - 0.5 * height
            }

        }

    }

}
