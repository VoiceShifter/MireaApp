import QtQuick 2.0
import Sailfish.Silica 1.0
import "MyDir"


Page{
    Loader {
    id: loader
    anchors{ fill: parent; margins: 100 }
    active: true
    }
    MouseArea {
    anchors.fill: parent
    onClicked: loader.setSource("MainPage2.qml")
    onDoubleClicked: loader.sourceComponent = blueRectangle
    }
    Component {
    id: blueRectangle
    Rectangle { color: "blue" }
    }


}
