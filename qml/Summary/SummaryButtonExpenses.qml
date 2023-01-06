import QtQuick
import "../Base"

SummaryButton {
    id: root
    readonly property color summaryColor: "#F4364C"
    property real yearlyExpense: 26543.92
    property real monthlyExpense: 1472.59
    property real weeklyExpense: 98.13
    property real selectedExpense: [yearlyExpense, monthlyExpense, weeklyExpense][selector.idx]
    text: qsTr("Expenses")
    Behavior on selectedExpense {
        NumberAnimation {
            duration: 350
            easing.type: Easing.InOutCubic
        }
    }
    TextRoboto {
        x: parent.height * 0.06
        y: parent.height * 0.55
        text: (root.selectedExpense
               >= 100 ? Math.floor(
                            root.selectedExpense) : root.selectedExpense.toFixed(
                            2)) + "€"
        color: root.summaryColor
        font.pixelSize: parent.height * 0.4
        font.weight: Font.Black
    }
    TextRoboto {
        id: periodText
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: selector.right
        anchors.right: parent.right
        anchors.leftMargin: (yearButton.width - selector.width) / 2
        clip: true
        text: [qsTr("Y\nE\nA\nR"), qsTr("M\nO\nN\nT\nH"), qsTr(
                "W\nE\nE\nK")][selector.idx]
        color: root.summaryColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.75
        font.pixelSize: width * 0.75
    }
    Rectangle {
        id: selector
        property int idx: 1
        property bool locked: false
        width: height * 0.05
        height: parent.height * 0.7
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: parent.width * 0.075
        radius: width / 2
        color: theme.windowColor
        function increaseSelected() {
            if (locked)
                return
            idx = (idx + 1) % 3
            selectionChangedAnimation.start()
        }
        function selected(clickedIndex) {
            if (idx === clickedIndex) {
                locked = !locked
                lockedChangedAnimation.start()
                return
            }
            if (selector.locked)
                return
            autoSelectionTimer.restart()
            idx = clickedIndex
            selectionChangedAnimation.start()
        }
        CircleButton {
            id: yearButton
            diameter: parent.height * 0.2
            anchors.verticalCenter: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            clickableAreaIncrease: +diameter * 0.1
            color: parent.color
            onClicked: selector.selected(0)
        }
        CircleButton {
            id: monthButton
            diameter: parent.height * 0.2
            anchors.centerIn: parent
            clickableAreaIncrease: +diameter * 0.1
            color: parent.color
            onClicked: selector.selected(1)
        }
        CircleButton {
            id: weekButton
            diameter: parent.height * 0.2
            anchors.verticalCenter: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            clickableAreaIncrease: +diameter * 0.1
            color: parent.color
            onClicked: selector.selected(2)
        }
        Circle {
            id: highlight
            readonly property real margin: /*selector.locked ? 0 :*/ 0.02
            diameter: parent.height * (0.20 - 2 * margin)
            anchors.horizontalCenter: parent.horizontalCenter
            color: root.summaryColor
            onDiameterChanged: console.log(diameter)
            Component.onCompleted: y = selector.children[selector.idx].y + parent.height * margin
        }
    }
    Timer {
        id: autoSelectionTimer
        interval: 5000
        running: !selector.locked
        repeat: true
        onTriggered: selector.increaseSelected()
    }
    ParallelAnimation {
        id: selectionChangedAnimation
        NumberAnimation {
            id: yHighlightAnimation
            target: highlight
            from: highlight.y
            to: selector.children[selector.idx].y + selector.height * highlight.margin
            property: "y"
            duration: 500
            easing.type: Easing.InOutCubic
        }
        SequentialAnimation {
            NumberAnimation {
                target: highlight
                property: "scale"
                from: 1.0
                to: 0.2
                duration: 250
            }
            NumberAnimation {
                target: highlight
                property: "scale"
                from: 0.2
                to: 1.0
                duration: 150
            }
        }
    }
    ParallelAnimation {
        id: lockedChangedAnimation
        NumberAnimation {
            target: highlight
            property: "scale"
            from: highlight.scale
            to: selector.locked ? 1.2 : 1.0
            duration: 250
            easing.type: Easing.OutQuad
        }
        NumberAnimation {
            target: yearButton
            property: "scale"
            from: yearButton.scale
            to: selector.locked && selector.idx != 0 ? 0.45 : 1.0
            duration: 250
            easing.type: Easing.OutQuad
        }
        NumberAnimation {
            target: monthButton
            property: "scale"
            from: monthButton.scale
            to: selector.locked && selector.idx != 1 ? 0.45 : 1.0
            duration: 250
            easing.type: Easing.OutQuad
        }
        NumberAnimation {
            target: weekButton
            property: "scale"
            from: weekButton.scale
            to: selector.locked && selector.idx != 2 ? 0.45 : 1.0
            duration: 250
            easing.type: Easing.OutQuad
        }
    }
}
