import QtQuick 2.0
import Sailfish.Silica 1.0
import "MyDir"




Page
{

    Loader
    {
        z:10
        id: _Loader
        anchors.fill: parent
    }

Colors{
id: _Colors
}

    Drawer
    {
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
                               _Loader.source = "MainPage5.qml"
                               console.log("Clicked Attendance button")
                        }

                    }
                }
            }

        }

    }
    Rectangle
    {
        z: -1
        anchors.fill: parent
//        width: parent.width
//        height: parent.height
        color: "#7881AE"

    }
    Rectangle
    {
        z:7
        id: _Menu
        radius: 180
        color: "#112D4E"
        height: 100
        width: 100
        y:20
        x:20
        Text
        {
            text: qsTr("+")
            font.pointSize: 36
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -5
        }


    }
    MouseArea
    {
        anchors.fill: _Menu
        onClicked:
        {
            _Drawer.open = !_Drawer.open

        }
    }

    Text {
        id: _Name
        text: qsTr("<-- Понедельник -->")
        anchors.horizontalCenter: _Breaker.horizontalCenter
        anchors.bottom: _Breaker.top
        anchors.bottomMargin: 10
        color: "white"

        font.bold: true
        font.pointSize: 28

    }
    Text {
        id: _StudentName
        text: qsTr("username")
        color: "white"
        anchors.topMargin: 20
        anchors.right: parent.right
        font.pointSize: 24
        font.bold: false
    }

    Rectangle //breaker
    {
        id: _Breaker
        color: "white"
        width: parent.width - 60
        height: 5
        anchors.top: _Menu.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
    }

    Column
    {
//            y: 80
        spacing: 40

        width: parent.width - 100


        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: _Breaker.bottom
        anchors.topMargin: 40
        Subject
        {
            id: _First
            _IsBold: false
            _SubjectName: "Кафедра ---\nЛинейная математика"
        }
        Subject
        {
            id: _Second
            _IsBold: false
            _SubjectName: "Кафедра ---\nЛинейная математика"
        }

    }
}

