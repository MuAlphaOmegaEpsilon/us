import QtQuick
import "../Base"

Flickable {
    id: root
    contentWidth: window.width
    contentHeight: column.height
    bottomMargin: column.spacing
    topMargin: column.spacing
    signal push(var component)
    signal pop

    Column {
        id: column
        width: parent.width
        spacing: window.height * 0.01
        SummaryButtonExpenses {
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: root.push(backPlaceholderComponent)
        }
        SummaryButtonRevenues {
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: root.push(backPlaceholderComponent)
        }
        SummaryButtonInvestments {
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: root.push(backPlaceholderComponent)
        }
        SummaryButtonLiquidity {
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: root.push(backPlaceholderComponent)
        }
        SummaryButtonReports {
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: root.push(backPlaceholderComponent)
        }
    }

    Component {
        id: backPlaceholderComponent
        MouseArea {
            TextRoboto {
                anchors.centerIn: parent
                text: "back"
            }
            onClicked: root.pop()
        }
    }
}
