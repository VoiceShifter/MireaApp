import QtQuick 2.0

Rectangle
{
    id: _SubjectObj
    color: "#DBE2EF"

    anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left // Add this line to set the left anchor to the parent left
        anchors.leftMargin: 20 // Set the left margin to 20 pixels
    height: 150
    radius: 25

    property string _SubjectName: ""
    property bool _IsBold: false
    property int _Lenght: 0
    Text {
        text: qsTr(_SubjectName)
        font.pointSize: 24
        font.bold: _IsBold
        color: "black"
        y: 10
        x: 20
    }

    signal clicked()
    MouseArea
    {

    }
}
