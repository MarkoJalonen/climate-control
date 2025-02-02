import QtQuick
import QtQuick.Effects

Item {
    property string svgPath: ""

    id: root
    Image {
        id: svg
        source: svgPath
        anchors.centerIn: root
    }

    MultiEffect {
        anchors.fill: svg
        shadowBlur: 1.0
        shadowEnabled: false
        shadowColor: "#FFC000"
        source: svg

        MouseArea {
            anchors.fill: parent
            onClicked: { parent.shadowEnabled = !parent.shadowEnabled }
        }
    }
}
