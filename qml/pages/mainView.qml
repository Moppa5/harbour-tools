import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaListView {
        id: mainView
        ScrollDecorator { flickable: mainView }
        contentHeight: parent.height
        width: parent.width
        anchors.fill: parent
        spacing: Theme.paddingLarge

        PageHeader {
            id: header
            title: "Sailfish Tools"
        }

        Column {
            id: col
            width: parent.width
            spacing: Theme.paddingLarge

            anchors.top: header.bottom
            anchors.topMargin: -Theme.paddingLarge
            anchors.left: parent.left
            anchors.leftMargin: Theme.paddingMedium
            anchors.right: parent.right
            anchors.rightMargin: Theme.paddingMedium

            SectionHeader {
                text: "Device Operations"
                //padding: 0
            }

            Button {
                id: reboot
                text: "Reboot"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: device.reboot()
            }

            Button {
                text: "Shutdown"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: device.shut()
            }

        }
    }
}
