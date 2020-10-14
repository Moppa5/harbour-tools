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
                text: "Network switch"
            }

            Button {
                text: "3G"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: network.switch_3g()
            }

            Button {
                text: "4G"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: network.switch_4g()
            }

            SectionHeader {
                text: "Device Operations"
            }

            Button {
                id: reboot
                text: "Reboot"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: device.reboot()
            }

            Button {
                id: shutdown
                text: "Shutdown"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: device.shut()
            }

        }
    }
}
