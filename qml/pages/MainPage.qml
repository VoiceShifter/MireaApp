import QtQuick 2.6
import Sailfish.Silica 1.0


Page
{

    Rectangle
    {
        Text {
            id: _logo
            text: qsTr("MIREA\nAPP")

            font.pointSize: 64/*
            anchors.topMargin: 20
            anchors.centerIn: parent*/

            y: 80
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter

            font.bold: true

            }
    width: parent.width
    height: parent.height
    color: "#7881AE"
        Rectangle //main item
        {
            height: parent.height / 1.4
            width: parent.width
            color: "#112D4E"
            y: parent.height / 2.5
            radius: 90
            //<------------------------------------- Main Login screen

            Rectangle //Icon holder
            {

                id: ico
                radius: 180
                height: 200
                width: 200
                color: "#DBE2EF"
                y: 20

                Image
                {
                    source: "home.svg"
                    sourceSize.width: 128
                    sourceSize.height: 128
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                

                // Icon
                // {
                //     source: "home.svg"
                //     anchors.horizontalCenter: parent.horizontalCenter
                //     anchors.verticalCenter: parent.verticalCenter
                //     color: "black"
                //     // height: 150
                //     // width: 150
                // }

//                IconButton{}
//                {
//                    icon.source: "image://icon-m-home.svg"


//                    anchors.horizontalCenter: parent.horizontalCenter
//                    anchors.verticalCenter: parent.verticalCenter

//                }
                anchors.horizontalCenter: parent.horizontalCenter


            }
            Text {
                id: login_text
                text: qsTr("Login")
                font.pointSize: 48
                font.bold: true
                y: 240
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            TextField
            {

                id: loginField
                placeholderText: "Login"
                y: 330
                anchors.horizontalCenter: parent.horizontalCenter

            }

            TextField
            {
                id: passwordField
                placeholderText: "Password"
                echoMode: TextInput.Password
                y: 390
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Text { //forgor
                id: forgot
                text: qsTr("Forget password?")
                font.pointSize: 20
                font.bold: true
                y: 470
                font.underline: true
                color: "#48CAE4"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle
            {
                id: login_button
                y:550
                radius: 20
                width: 207
                height: 50
                Text {
                    text: qsTr("ENTER")
                    font.pointSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    color: "#112D4E"
                }
                color: "#BBD0FF"
                anchors.horizontalCenter: parent.horizontalCenter


            }





        }
    }
//    Item
//    {

//        Rectangle
//        {
//            color: Qt.rgba(120/255, 129/255, 174/255, 0.3)
//            width: parent.width
//            height: parent.height

//        }
//    }

}

//Page {
//    objectName: "mainPage"
//    allowedOrientations: Orientation.All


//    backgroundColor: "7881AE"


////    PageHeader {

////        objectName: "Login"
////        title: qsTr("Mirea")

////        extraContent.children: [
////            IconButton {
////                objectName: "aboutButton"
////                icon.source: "image://theme/icon-m-about"
////                anchors.verticalCenter: parent.verticalCenter

////                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
////            }
////        ]
////    }


//}
