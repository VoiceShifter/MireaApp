import QtQuick 2.0
import Sailfish.Silica 1.0
import "../"

Drawer
{
    Colors{
    id: _Colors
    }


    z: 5
    id: _Drawer
    open: false
    anchors.top: parent.top
    anchors.left: parent.left
    width: parent.width
    height: parent.height
    hideOnMinimize: true
    backgroundSize: parent.width / 2

    dock: Dock.Left

    background: Rectangle
    {
        z:6

        color: _Colors._PowderBlue
        border.color: "black"
        border.width: 2
        anchors.fill : parent
        Column
        {
            spacing: -1
            width: parent.width

            anchors.top: parent.top
            anchors.topMargin: 140

            Rectangle
            {
                width: parent.width - 1
                border.color: "black"
                border.width: 1
                height: _Colors._SideButtonHeight
                color: _Colors._CoolGray
                Text {
                    id: _ToSchedule
                    text: qsTr("Schedule")
                    font.pointSize: _Colors._MediumFont
                    color: "black"
                    anchors.centerIn: parent
                }
            }
            Rectangle
            {
                width: parent.width - 1
                border.color: "black"
                border.width: 1
                height: _Colors._SideButtonHeight
                color: _Colors._CoolGray
                Text {
                    id: _ToTeachers
                    text: qsTr("Teachers")
                    font.pointSize: _Colors._MediumFont
                    color: "black"
                    anchors.centerIn: parent
                }

            }
            Rectangle
            {
                width: parent.width - 1
                border.color: "black"
                border.width: 1
                height: _Colors._SideButtonHeight
                color: _Colors._CoolGray
                Text {
                    id: _Attendance
                    text: qsTr("Attendance")
                    font.pointSize: _Colors._MediumFont
                    color: "black"
                    anchors.centerIn: parent
                }
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                           _Loader.source = "../RedRectangle.qml"
                           console.log("Clicked Attendance button")
                    }

                }
            }
        }

    }

}
