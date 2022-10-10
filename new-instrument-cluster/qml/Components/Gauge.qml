import QtQuick
import QtQuick.Layouts
import Theme

Rectangle {
    id: base

    property int steps: 72
    property string type: "speedometer"
    property int text: 250

    function setText(text) {
        if (base.type == "speedometer") {
            base.text -= 20;
            return (text -= 20).toString();
        }
    }

    width: 520
    height: 520
    radius: width * 0.5
    color: Theme.primaryDarkGray
    border.color: Theme.secondaryGray
    border.width: 1

    Item {
        property double minimum: Math.min(base.width, base.height)

        anchors.centerIn: parent
        width: minimum
        height: minimum

        Repeater {
            id: lines

            model: steps

            delegate: Rectangle {
                color: (index >= 12 && index <= 60) ? Theme.primaryOrange : "transparent"
                width: 1
                height: index % 2 ? 10 : 20
                antialiasing: true
                x: (0.5 * base.width + Math.sin(2 * Math.PI / lines.count * index) * (base.width * 0.5 - height / 2)) - width / 2
                y: (0.5 * base.height + Math.cos(2 * Math.PI / lines.count * index) * (base.height * 0.5 - height / 2)) - height / 2
                rotation: Math.atan2(y - base.height * 0.5, x - base.width * 0.5) * 180 / Math.PI + 90
            }

        }

        Repeater {
            id: labels

            property string localText

            onItemAdded: {
                if (index % 4 != 0)
                    return ;

                if (index == 12) {
                    console.log(index);
                    item.text = base.text;
                    return ;
                }
                if (index > 12 && index <= 60) {
                    item.text = base.setText(base.text);
                    return ;
                }
                console.log(index, base.text);
            }
            model: steps

            delegate: Text {
                color: Theme.primaryOrange
                antialiasing: true
                font.pixelSize: 24
                x: (0.5 * base.width + Math.sin(2 * Math.PI / lines.count * index) * (base.width * 0.5 - 44)) - contentWidth * 0.5
                y: (0.5 * base.height + Math.cos(2 * Math.PI / lines.count * index) * (base.height * 0.5 - 44)) - contentHeight * 0.5
            }

        }

    }

}
