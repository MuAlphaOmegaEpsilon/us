import QtQuick
import QtQuick.Controls
import "Base"
import "Summary"
import "Welcome"

Window {
    id: window
    readonly property real minSize: Math.min(window.width, window.height)
    readonly property real maxSize: Math.max(window.width, window.height)
    width: 1284 / 2
    height: 2778 / 2
    visible: true
    title: qsTr("us")
    color: theme.windowColor

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: summaryPage // welcomePage
    }

    RectangleButton {
        id: addButton
        width: window.minSize * 0.1
        height: width
        color: "teal"
        anchors.right: parent.right
        anchors.rightMargin: window.width * 0.01
        anchors.bottom: parent.bottom
        anchors.bottomMargin: window.height * 0.01
        onClicked: stack.push()
        Rectangle {
            width: parent.width * 0.5
            height: parent.height * 0.05
            anchors.centerIn: parent
            radius: height / 2
            color: theme.textColor
        }
        Rectangle {
            width: parent.width * 0.05
            height: parent.height * 0.5
            anchors.centerIn: parent
            radius: width / 2
            color: theme.textColor
        }
    }

    Component {
        id: welcomePage
        WelcomePage {
            onWelcomingCompleted: stack.replace(welcomePage, summaryPage)
        }
    }
    Component {
        id: summaryPage
        SummaryPage {
            onPush: component => stack.push(component)
            onPop: stack.pop()
        }
    }
}
