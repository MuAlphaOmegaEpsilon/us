import QtQuick
import "../Base"

RectangleButton {
    id: root
    property alias text: summaryName.text
    width: window.width * 0.95
    height: width * 0.5
    radius: height * 0.1
    color: theme.bgColor0
    TextRoboto {
        id: summaryName
        y: parent.height * 0.04
        x: parent.height * 0.06
        text: "Placeholder"
        font.pixelSize: parent.radius * 1.45
    }
}
