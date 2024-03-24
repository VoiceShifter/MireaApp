import QtQuick 2.0
import Sailfish.Silica 1.0
import "MyDir"



Page
{
    Rectangle
    {

        anchors.fill: parent
//        width: parent.width
//        height: parent.height
        color: "#7881AE"

        Rectangle
        {
           z:1
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
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -5
                anchors.horizontalCenter: parent.horizontalCenter

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
                _SubjectName: "Кафедра ---\nЛинейная математика"
            }
            Subject
            {
                id: _Second
                _SubjectName: "Кафедра ---\nЛинейная математика"
            }

        }

        Rectangle { //left side sliding menu
            id: _SideMenu
            width: parent.width / 1.7
            height: parent.height
            color: "#A1A8CD"
            radius: 60
            anchors.right: parent.horizontalCenter
            border.color: "black"
            border.width: 3
                  }

        Column {
            spacing: -3
            height: _SideMenu.height
            anchors.top: _Breaker.top
            anchors.right: _SideMenu.right
            anchors.left: parent.left

//            Rectangle {
//                width: parent.width
//                height: 100
//                color: "#3F72AF"
//                anchors.right: parent.right
//                border.color: "black"
//                border.width: 3
//                //anchors.top: _Menu.bottom // You might not need this line here
//                Text
//                                    {
//                                    text: qsTr("Расписание")
//                            color: "black"

//                            anchors.centerIn: parent
//                            font.pointSize: 32
//                            font.bold: true
//                                    }
//                        }
            MenuItem
            {
                _ItemName: "Предметы"
            }
            MenuItem
            {
                _ItemName: "Расписание"
            }
            MenuItem
            {
                _ItemName: "Преподаватели"
            }
            MenuItem
            {
                _ItemName: "etc"
            }
                }
  }

 }

