import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtQml.Models 2.1
import "MyDir"
import Searcher 1.0
Rectangle
{
    width: parent.width
    height: parent.height
    Colors
    {
        id: _Colors

    }
    color: _Colors._LightPurple

    MyDrawer
    {
        id: _Drawer
    }
    MenuButton
    {
        id: _Menu
        y:20
        x:20
        _DrawerId: _Drawer

    }
    Text
    {
        id: _Name
        text: qsTr("Преподаватели")
        anchors.horizontalCenter: _Breaker.horizontalCenter
        anchors.bottom: _Breaker.top
        anchors.bottomMargin: 10
        color: "white"

        font.bold: true
        font.pointSize: 28
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
    Searcher
    {

        id: _Searcher
    }

    TextField
    {
        z:1
        id: _SearchField
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 100
        anchors.top: _Breaker.bottom
        anchors.topMargin: 40
        color: "white"
        text: _Searcher.Cache



        rightItem: Rectangle
        {
            width: 50
            height: 50
            radius: 180
            border.color: "black"
            color: _Colors._PowderBlue
            border.width: 2
            Text
            {
                text: qsTr("X")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    _SearchField.text = ""
                }
            }

        }
        }

    Rectangle
    {
        id: _SearchButton
        width: 300
        height: 60
        anchors.horizontalCenter:  parent.horizontalCenter
        anchors.top: _SearchField.bottom
        anchors.topMargin: 10
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                _Searcher._Search(_SearchField.text)

                _Searcher._Items = _SearchField.text

            }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Search")
        }
    }



    ListView
    {
        id: _TeachersView
        anchors.top: _SearchButton.bottom
        anchors.topMargin: 10
        width: parent.width
        model: _Searcher._Items


        height: parent.height
        spacing: 0
        delegate: Rectangle
        {
            border.color: "black"
            border.width: 1
            width: parent.width
            height: 60
            Text {
                id: name
                font.bold: true
                text: modelData
                font.pointSize: 24
                color: "black"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

        }
    }






}
