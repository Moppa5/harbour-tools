import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    PageHeader {
        title: "Sailfish Tools"
    }

    Button {
        text: "Reboot me"
        anchors.centerIn: parent
        onClicked: device.reboot()
    }
}
