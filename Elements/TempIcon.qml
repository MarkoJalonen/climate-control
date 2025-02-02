import QtQuick
import QtQuick.Effects

Item {
    Image {
        id: svg

        anchors {
            // horizontalCenter: heatedSeatIconSVG.horizontalCenter
            // bottom: temperature.top
            // margins: homeScreenItem.bottomIconMargins
            // bottomMargin: 20
        }
         source: "../assets/windscreen_demist_white.svg"
    }

    MultiEffect {
        anchors.fill: svg
        shadowBlur: 1.0
        shadowEnabled: true
        shadowVerticalOffset: 10
        shadowHorizontalOffset: 10
        shadowColor: "#FFC000"
        source: svg
    }
}
