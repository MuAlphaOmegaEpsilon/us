import QtQuick

Item {
    id: root
    signal welcomingCompleted

    Image {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -100
        source: "/assets/us.svg"
        sourceSize: Qt.size(parent.width * 0.5, parent.width * 0.5)
    }
    Rectangle {
        width: welcomeText.width * 1.4
        height: welcomeText.height * 1.25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        radius: height / 2
        color: theme.highlight
        Text {
            id: welcomeText
            text: qsTr("WELCOME")
            anchors.centerIn: parent
            color: theme.buttonText
            font.pointSize: 34
        }
        MouseArea {
            anchors.fill: parent
            onClicked: root.welcomingCompleted()
        }
    }
}
