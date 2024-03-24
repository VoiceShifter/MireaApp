import QtQuick 2.0

Rectangle {
    property color _LightBlue: "#DBE2EF"
    property color _LightPurple: "#7881AE"
    width: parent.width
    height: 60
    color: _LightBlue
    property string _StudentName: ""
    property string _First: ""
    property string _Second: ""
    property string _Third: ""
    border.color: "black"
    border.width: 1

    Text {
        text: _StudentName
        anchors.right: _aFirst.left
        anchors.rightMargin: 20
        font.bold: true
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: _aFirst
        width: parent.width / 6
        height: parent.height
        x: parent.width / 2 - 1
        color: _LightBlue
        border.color: "black"
        border.width: 1
        Text {

            text: qsTr(_First)
            font.pointSize: 24
            anchors.centerIn: parent
        }
    }

    Rectangle {

        width: parent.width / 6
        height: parent.height
        x: parent.width / 2 + parent.width / 6 - 1
        color: _LightBlue
        border.color: "black"
        border.width: 1
        Text {

            text: qsTr(_Second)
            font.pointSize: 24
            anchors.centerIn: parent
        }
    }



    Rectangle {

        width: parent.width / 6
        height: parent.height
        x: parent.width / 2 + 2 * parent.width / 6 - 1
        color: _LightBlue
        border.color: "black"
        border.width: 1
        Text {

            text: qsTr(_Third)
            font.pointSize: 24
            anchors.centerIn: parent
        }
    }

}



//Rectangle{
//    color: "white"
//    border.color: "black"
//    width: parent.width
//    height: 60
//    property string _StudentName: ""



//    Text {
//        text: qsTr(_StudentName)
//        anchors.right: _FirstDelimiter.right
//        font.pointSize: 20

//    }
//    Rectangle /////////////////////
//    {
//        id: _FirstDelimiter
//        height: parent.height
//        x: parent.width / 2
//        width: 1
//        color: "blue"

//    }
//    Rectangle
//    {
//        id: _NotHere
//        height: parent.height
//        width: 30
//        anchors.left: _FirstDelimiter.right
//        color: "red"
//    }
//    Rectangle /////////////////////
//    {

//        id: _SecondDelimiter
//        height: parent.height
//        x: parent.width / 3
//        width: 1
//        color: "blue"

//    }
//    Rectangle
//    {
//        id: _Here
//        height: parent.height
//        width: 30
//        anchors.left: _SecondDelimiter.right
//        color: "blue"
//    }
//    Rectangle /////////////////////
//    {
//        id: _ThirdDelimiter
//        height: parent.height
//        x: parent.width / 3 * 2
//        width: 1
//        color: "blue"

//    }
//    Rectangle
//    {
//        id: _NotHereByReason
//        height: parent.height
//        width: 30
//        anchors.left: _ThirdDelimiter.right
//        color: "green"
//    }
//    Rectangle
//    {
//        id: _ForthDelimiter
//        height: parent.height
//        x: parent.width - 40
//        width: 1
//        color: "blue"

//    }
//}
