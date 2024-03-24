import QtQuick 2.0

Rectangle {
    width: parent.width
    height: 100
    color: "#3F72AF"
    property string _ItemName: ""
    property int _Lenght: 0

    anchors.right: parent.right
    border.color: "black"
    border.width: 3
    //anchors.top: _Menu.bottom // You might not need this line here
    Text
               {
                text: qsTr(_ItemName)
                color: "black"

                anchors.centerIn: parent
                font.pixelSize: 32
                font.bold: true
               }
}

