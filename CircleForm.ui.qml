import QtQuick 2.4

Item {
    width: 200
    height: 200
    property alias buttonColor: button.color
    property alias displayText: display.text

    Rectangle {
        id: button
        color: "#7e0a0a"
        radius: width * 0.5
        anchors.fill: parent

        Text {
            id: display
            x: 89
            y: 93
            color: "#ffffff"
            text: qsTr("Text")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 30
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Arial"
        }
    }
}
