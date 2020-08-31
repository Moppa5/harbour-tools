import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.DBus 2.0
import "pages"

ApplicationWindow
{
    id: app
    initialPage: Qt.resolvedUrl("pages/mainView.qml")
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    DBusInterface {
        id: device
        service: "com.nokia.dsme"
        path: "/com/nokia/dsme/request"
        iface: "com.nokia.dsme.request"
        bus: DBus.SystemBus

        function reboot() {
            device.call("req_reboot", undefined)
        }

        function shut() {
            device.call("req_shutdown", undefined)
        }
    }
}
