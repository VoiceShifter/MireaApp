
import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import "MyDir"


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
            text: qsTr("Математика")
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
            id: _Lectures
            spacing: 40

            width: parent.width - 100


            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: _Breaker.bottom
            anchors.topMargin: 40
            Subject
            {
                id: _First
                _SubjectName: "Лекция 1"
            }
            Subject
            {
                id: _Second
                _SubjectName: "Лекция 2"
            }

        }
        Rectangle //breaker
        {

            id: _Breaker2
            color: "white"
            width: parent.width - 60
            height: 5
            anchors.top: _Lectures.bottom
            anchors.topMargin: -300
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Column
        {
//            y: 80
            id: _Practics
            spacing: 40

            width: parent.width - 100


            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: _Breaker2.bottom
            anchors.topMargin: 40

            Subject
            {
                id: _FirstPrac
                _SubjectName: "Практика 1"
            }
            Subject
            {
                id: _SecondPrac
                _SubjectName: "Практика 2"
            }

        }
    }
