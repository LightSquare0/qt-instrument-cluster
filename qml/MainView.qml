import "./Components"
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Control {
    function handleKeys(event)
    {
        if (event.key == Qt.Key_Left)
        {
            speedometer.focused = true;
            tachometer.focused = false;
            console.log(focus);
        }
        if (event.key == Qt.Key_Right)
        {
            speedometer.focused = false;
            tachometer.focused = true;
            console.log(focus);
        }
        // if (event.key == Qt.Key_Escape)
        // {
        //     speedometer.focused = true;
        //     speedometer.focus = true;
        //     console.log(speedometer.focused, "control");
        // }
    }

    anchors.centerIn: parent

    contentItem: RowLayout {
        Keys.onPressed: handleKeys(event)

        id: main

        Gauge {
            id: speedometer

            focused: true
            type: "speedometer"
        }

        // Map{}
        Middle{}

        Gauge {
            id: tachometer

            focused: false
            type: "tachometer"
        }

        // Slider {
        //     from: 0
        //     value: Vehicle.speed
        //     to: 250
        //     onValueChanged: {
        //         Vehicle.setSpeed(value)
        //     }

        //     Keys.onPressed: (event) => {
        //     if (event.key == Qt.Key_Escape)
        //     {
        //         focus = false;
        //         speedometer.focused = true;
        //         main.focus = true;
        //     }
        // }
    }

}

