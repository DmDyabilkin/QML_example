import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Background {
        id: background
        anchors.fill: parent
        target: sender

        Sender {
            id: sender
            y: 140
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            buttonColor: "orange"
            displayText: "Sender"
            anchors.leftMargin: 50
            target: receiver
        }

        Receiver {
            id: receiver
            x: 108
            y: 180
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            buttonColor: "#ff0000"
            displayText: "Receiver"
            anchors.rightMargin: 50
            width: sender.width
        }
    }
}
