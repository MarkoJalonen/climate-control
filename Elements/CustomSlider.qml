import QtQuick
import QtQuick.Controls.Basic


Slider {
    id: controlSlider

    property string color
    property string handleFillColor

    from: 15
    value: 25
    to: 30
    stepSize: 1

    background: Rectangle {
        height: 5
        width: controlSlider.width - controlSlider.handle.width / 2
        radius: 5
        anchors.verticalCenter: controlSlider.verticalCenter
        color: controlSlider.color
    }

    handle: Rectangle {
        x: controlSlider.visualPosition * (controlSlider.availableWidth - width)
        anchors.verticalCenter: controlSlider.verticalCenter
        width: 64
        height: 64
        radius: width / 2
        color: controlSlider.handleFillColor
        border.color: controlSlider.color
        border.width: width / 12
    }
}