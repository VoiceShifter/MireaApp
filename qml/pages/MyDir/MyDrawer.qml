import QtQuick 2.0
import Sailfish.Silica 1.0


Drawer {
    id: _Drawer
    dock: Dock.Left
    background: ListView
    {
        spacing: 20
        Label
        {
            text: "Menu"
            font.bold: true
            font.pixelSize: 24
        }
        Rectangle
        {
            width: parent.width
            height: 50
            color: "white"
        }
    }
    foreground: ListView
    {
        spacing: 20
        Label
        {
            text: "Menu"
            font.bold: true
            font.pixelSize: 24
        }
        Rectangle
        {
            width: parent.width
            height: 50
            color: "white"
        }
    }
}
