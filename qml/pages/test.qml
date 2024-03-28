import QtQuick 2.0
import Sailfish.Silica 1.0
import "MyDir"

Page{

    Rectangle
    {
        anchors.fill: parent
        color: "green"
    }

    Button {
        id: _Button
        text: "Toggle Drawer"
        anchors.top: parent.top
        onClicked: {
            drawer.open = !drawer.open
            console.log("Clicked _MenuButton\nDrawer Status - ", drawer.opened)

        }
    }
        Button {
            id: _Button2
            text: "log"
            anchors.top: parent.top
            anchors.left: _Button.right
            onClicked: {

                console.log("Clicked _MenuButton\nDrawer Status - ", drawer.opened)

            }
        }



    Drawer{
        id: drawer
        width: parent.width
        height: parent.height - _Button.height// Adjust height based on button height

        dock: Dock.Left
        open: false
        hideOnMinimize: true
        anchors.top: _Button.bottom
        backgroundSize: parent.width / 2


        background: Rectangle {
            color: "white"
            width: 500
            height: 500
            Text {
                text: "background Content"
                anchors.left: parent.left
            }
        }

        foreground: Rectangle {
            width: 500
            height: 500
            color: "white"
            Text {
                text: "foreground Content"
                anchors.left: parent.left
            }
        }
    }
}
