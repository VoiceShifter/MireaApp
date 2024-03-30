import QtQuick 2.0
import Sailfish.Silica 1.0




Rectangle
{
    z:7
    radius: 180
    color: "#112D4E"
    height: 100
    width: 100
    property int _DrawerId: 0

    Text
    {
        text: qsTr("+")
        font.pointSize: 36
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -5
    }
    MouseArea
    {

        anchors.fill: parent
        onClicked:
        {
            _Drawer.open = !_Drawer.open
            console.log("MenuButton clicked\n")

        }
    }
}

