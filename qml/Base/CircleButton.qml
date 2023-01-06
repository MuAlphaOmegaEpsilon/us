import QtQuick

Circle {
    id: root
    signal clicked
    signal pressed
    signal released
    property real clickableAreaIncrease: 0
    opacity: enabled ? 1.0 : 0.5
    color: theme.buttonColor
    MouseArea {
        anchors.fill: parent
        anchors.margins: -root.clickableAreaIncrease
        onClicked: root.clicked()
        onPressed: root.pressed()
        onReleased: root.released()
    }
}
