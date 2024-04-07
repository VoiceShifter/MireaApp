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


    TextField
    {
        id: _SearchField
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 100
        anchors.top: _Breaker.bottom
        anchors.topMargin: 40
        color: "white"
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
                    _SearchField.text =""
                }
            }

        }
    Searcher
    {
        id: _Searcher
    }


    }
    ListView
    {
        anchors.top: _SearchField.bottom
        anchors.topMargin: 40
        width: parent.width
        model: _DataModel
        height: parent.height
        spacing: 40
    }
    ObjectModel
    {
        id: _DataModel
    }






}
