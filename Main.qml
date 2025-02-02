import QtQuick
import QtQuick.Layouts
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

    GridLayout {
        id: grid
        anchors {
            fill: parent
            margins: 10
        }
        columns: 3
        rows: 3

        ToggleIcon {
            svgPath: "Assets/windscreen_demist_white.svg"
            Layout.preferredWidth: grid.width / grid.columns
            Layout.preferredHeight: grid.height / grid.rows
        }

        CustomSlider {
            id: slider
            Layout.columnSpan: 2
            Layout.preferredWidth: grid.width / grid.columns * 2
            color: root.drawColor
            handleFillColor: root.backgroundColor
        }
    }
}