import QtQuick 2.2
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    id: app
    initialPage: Qt.resolvedUrl("pages/mainView.qml")
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
