import QtQuick 2.5


Image {
    id: root
    source: "images/background.svg"

    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }


    Item {
        id: content
        anchors.fill: parent
        opacity: 0
        TextMetrics {
            id: units
            text: "M"
            property int gridUnit: boundingRect.height
            property int largeSpacing: units.gridUnit
            property int smallSpacing: Math.max(2, gridUnit/4)
        }

        Image {
            id: logo
            property real size: units.gridUnit * 8

            anchors.centerIn: parent

            source: "images/logo.png"

        }

        Image {
            id: busyIndicator
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: logo.bottom 
            source: "images/loading-00.svg"
            sourceSize.height: units.gridUnit * 1.5
            sourceSize.width: units.gridUnit * 1.5
            RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 800
                loops: Animation.Infinite
            }
        }

    }

    OpacityAnimator {
        id: introAnimation
        running: false
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}
