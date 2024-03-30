import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    id: root
    objectName: "applicationWindow"
    initialPage: Qt.resolvedUrl("pages/LoaderPage.qml")
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    property color _LightBlue: "#DBE2EF"
}
