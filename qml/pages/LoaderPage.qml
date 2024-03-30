import QtQuick 2.6
import Sailfish.Silica 1.0

Page {
    id: _LoaderPage

    width: parent.width
    height: parent.height
    property int aStage: 0


    Loader
    {
        id: _Loader
        anchors.fill: parent
        source:"MainPage.qml"
    }

}
