import QtQuick

Rectangle {
    id: root
    signal clicked
    signal pressed
    signal released
    radius: height / 2
    opacity: enabled ? 1.0 : 0.5
    color: theme.buttonColor
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: root.pressed()
        onReleased: root.released()
    }
}
