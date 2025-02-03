import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Elements

Window {
    id: root
    property string drawColor: "white"
    property string backgroundColor: "black"

    maximumHeight: 480
    maximumWidth: 640
    minimumHeight: 480
    minimumWidth: 640
    color: backgroundColor
    visible: true
    title: "Climate Control"

    ColumnLayout {
        width: root.width
        height: root.height

        RowLayout {
            ToggleIcon {
                enableEffect: false
                svgPath: "Assets/fan_white.svg"
            }

            CustomSlider {
                Layout.fillWidth: true
                color: root.drawColor
                handleFillColor: root.backgroundColor
                snapMode: Slider.SnapAlways
                from: 0
                value: 2
                to: 4
                stepSize: 1
            }
        }

        RowLayout {
            Item {
                id: tempItem
                width: 150
                height: 150
                Text {
                    id: tempValue
                    anchors {
                        horizontalCenter: tempItem.horizontalCenter
                    }
                    font.pointSize: 48
                    text: "22"
                    color: root.drawColor
                }
                Text {
                    y: tempValue.y + tempValue.height
                    anchors.horizontalCenter: tempValue.horizontalCenter
                    font.pointSize: 24
                    text: "TEMP"
                    color: root.drawColor
                }
            }

            CustomSlider {
                Layout.fillWidth: true
                color: root.drawColor
                handleFillColor: root.backgroundColor

                onValueChanged: function(){
                    tempValue.text = this.value;
                }
            }
        }
    

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter 
            spacing: 10

            Repeater {
                model: [
                    "Assets/heated_seat_white.svg",
                    "Assets/windscreen_demist_white.svg",
                    "Assets/rearscreen_demist_white.svg",
                    "Assets/air_circulation_white.svg",
                ]

                ToggleIcon {
                    required property string modelData
                    svgPath: modelData
                }
            }

            ToggleIcon{
                mirrored: true
                svgPath: "Assets/heated_seat_white.svg"  
            }
        }
    }
}
