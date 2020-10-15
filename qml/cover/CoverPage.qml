import QtQuick 2.2
import Sailfish.Silica 1.0

CoverBackground {

    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("Sailfish Tools")
    }

    CoverActionList {
            id: coverAction

            CoverAction {
                iconSource: "image://theme/icon-cover-sync"
                onTriggered: {
                }
            }
        }
}
