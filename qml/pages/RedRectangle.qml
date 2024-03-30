
import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtQml.Models 2.1
import "MyDir"

Rectangle
{

    anchors.fill: parent
//        width: parent.width
//        height: parent.height
    color: "#7881AE"


    MenuButton
    {
        id: _Menu
        y:20
        x:20
        _DrawerId: _Drawer

    }
    MyDrawer
    {
        id: _Drawer
    }

    Text {
        id: _Name
        property string _GroupName: "IKBO - 07 - 21"
        text: qsTr("IKBO - XX - XX")
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




    SilicaFlickable
    {
        anchors.top: _Breaker.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height

        AttendanceLine
        {
            z:1
            id: _Template
            _StudentName: ""
            anchors.top: parent.top
            anchors.topMargin: 20
            _First: "+"
            _Second: "-"
            _Third: "?"
        }


        ListView
        {
            z:0
            anchors.top: _Template.bottom
            width: parent.width
            model: _DataModel
            height: parent.height


        }
        ObjectModel
        {
            id: _DataModel
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }
            AttendanceLine
            {
                _StudentName: "Username"
            }


        }
VerticalScrollDecorator{}

//            VerticalScrollDecorator{
//                    id: vbar

//                    anchors.top: parent.top
//                    anchors.right: parent.right
//                    anchors.bottom: parent.bottom
//                }

        }
    }

