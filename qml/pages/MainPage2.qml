import QtQuick 2.0
import Sailfish.Silica 1.0
import "MyDir"



Page
{

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
            height: parent.height
            width: parent.width
            color: Colors._LightPurple
            radius: 30
            border.color: "black"
            border.width: 2
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
            if (_Drawer.opened)
            {
                _Drawer.open = false
                console.log("Clicked _MenuButton - closed\nDrawer Status - ", _Drawer.opened)
            }
            else
            {
                _Drawer.open = true
                console.log("Clicked _MenuButton - opened\nDrawer Status - ", _Drawer.opened)
            }

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

