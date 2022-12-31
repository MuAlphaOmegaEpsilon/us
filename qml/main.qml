import QtQuick
import QtQuick.Shapes

Window {
    id: window
    width: 1080
    height: 1920
    visible: true
    title: qsTr("us")
    color: "white"

    Rectangle {
        id: rectangle
        width: height
        height: Math.max(parent.width, parent.height)
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: 0.0
        gradient: Gradient {
            GradientStop {
                position: 0.2
                color: "#FEA3AA"
            }
            GradientStop {
                position: 0.4
                color: "#FFFFFF"
            }
        }
        OpacityAnimator on opacity {
            duration: 2000
            from: 0
            to: 1
            running: true
            easing.type: Easing.InOutQuad
        }
    }
    Text {
        text: qsTr("US")
        y: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.pointSize: 100
    }
}
