import QtQuick
import QtQuick.Effects

Item {
    property string svgPath: ""
    property bool mirrored: false
    property bool enableEffect: true

    id: root
    width: svg.width
    height: svg.height

    Image {
        id: svg
        source: svgPath
        mirror: mirrored
    }

    MultiEffect {
        id: effect
        anchors.fill: parent
        shadowBlur: 1.0
        shadowEnabled: false
        shadowColor: "#FFC000"
        source: svg

        MouseArea {
            anchors.fill: effect
            onClicked: { 
                effect.shadowEnabled = 
                    (!effect.shadowEnabled) && root.enableEffect}
        }
    }
}
