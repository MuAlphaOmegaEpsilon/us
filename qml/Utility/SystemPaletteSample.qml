import QtQuick

// This component is meant to be run using the "qml" utility.
// The scope of this is to test out the system palette.
Item {
    id: root
    width: 1200
    height: 900

    SystemPalette { id: activeTheme; colorGroup: SystemPalette.Active }
    SystemPalette { id: inactiveTheme; colorGroup: SystemPalette.Inactive }
    SystemPalette { id: disabledTheme; colorGroup: SystemPalette.Disabled }

    Rectangle{
        id: activeThemeSection
        width: 400
        height: 900
        color: activeTheme.window
        Column{
            width: parent.width
            x: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5
            Text{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "ACTIVE"
                color: activeTheme.windowText
                font.pointSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "alternateBase"
                color: activeTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "base"
                color: activeTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "button"
                color: activeTheme.button
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "buttonText"
                color: activeTheme.buttonText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "dark"
                color: activeTheme.dark
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlight"
                color: activeTheme.highlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlightedText"
                color: activeTheme.highlightedText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "light"
                color: activeTheme.light
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "mid"
                color: activeTheme.mid
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "midlight"
                color: activeTheme.midlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "placeholderText"
                color: activeTheme.placeholderText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "shadow"
                color: activeTheme.shadow
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "text"
                color: activeTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "window"
                color: activeTheme.window
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "windowText"
                color: activeTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
        }
    }
    Rectangle{
        id: inactiveThemeSection
        width: 400
        height: 900
        x: 400
        color: inactiveTheme.window
        Column{
            width: parent.width
            x: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5
            Text{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "INACTIVE"
                color: inactiveTheme.windowText
                font.pointSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "alternateBase"
                color: inactiveTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "base"
                color: inactiveTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "button"
                color: inactiveTheme.button
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "buttonText"
                color: inactiveTheme.buttonText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "dark"
                color: inactiveTheme.dark
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlight"
                color: inactiveTheme.highlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlightedText"
                color: inactiveTheme.highlightedText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "light"
                color: inactiveTheme.light
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "mid"
                color: inactiveTheme.mid
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "midlight"
                color: inactiveTheme.midlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "placeholderText"
                color: inactiveTheme.placeholderText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "shadow"
                color: inactiveTheme.shadow
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "text"
                color: inactiveTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "window"
                color: inactiveTheme.window
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "windowText"
                color: inactiveTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
        }
    }
    Rectangle{
        id: disabledThemeSection
        width: 400
        height: 900
        x: 800
        color: inactiveTheme.window
        Column{
            width: parent.width
            x: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5
            Text{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "DISABLED"
                color: disabledTheme.windowText
                font.pointSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "alternateBase"
                color: disabledTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "base"
                color: disabledTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "button"
                color: disabledTheme.button
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "buttonText"
                color: disabledTheme.buttonText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "dark"
                color: disabledTheme.dark
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlight"
                color: disabledTheme.highlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "highlightedText"
                color: disabledTheme.highlightedText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "light"
                color: disabledTheme.light
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "mid"
                color: disabledTheme.mid
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "midlight"
                color: disabledTheme.midlight
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "placeholderText"
                color: disabledTheme.placeholderText
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "shadow"
                color: disabledTheme.shadow
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "text"
                color: disabledTheme.text
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "window"
                color: disabledTheme.window
                font.pointSize: 32
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "windowText"
                color: disabledTheme.windowText
                font.pointSize: 32
                font.bold: true
            }
        }
    }
}
