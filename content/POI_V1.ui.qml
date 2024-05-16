

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import Flydynamics2uidesigner
import QtQuick.Layouts

Rectangle {
    id: rootPoi
    width: 1920
    height: 1080

    color: Constants.backgroundColor

    Rectangle {
        id: recMap
        anchors.fill: parent
        color: "gray"

        Image {
            id: imgMap
            anchors.fill: parent
            source: "ales_icons/POI/exampleMap.png"
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: recControl
        height: 100
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 40
        color: "transparent"
        RoundButton {
            id: btnBack
            height: parent.height
            width: height
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 40
            display: AbstractButton.IconOnly
            icon.height: 80
            icon.width: 80
            icon.source: "ales_icons/HippingPOI/Back.svg"
        }

        RoundButton {
            id: btnMaptype
            height: parent.height
            width: height
            anchors.right: parent.right
            anchors.top: parent.top
            display: AbstractButton.IconOnly
            icon.height: 80
            icon.width: 80
            icon.source: "ales_icons/POI/mapType.svg"
            anchors.rightMargin: 40
        }

        RoundButton {
            id: btnCenterIn
            height: parent.height
            width: height
            anchors.right: btnMaptype.left
            anchors.top: parent.top
            display: AbstractButton.IconOnly
            icon.height: 80
            icon.width: 80
            icon.source: "ales_icons/POI/centerIn.svg"
            anchors.rightMargin: 40
        }

        Rectangle {
            id: recSearch
            height: parent.height
            width: parent.width / 3
            radius: 15

            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            RowLayout {
                id: row
                anchors.fill: parent
                anchors.margins: 20
                spacing: 10
                Image {
                    width: 100
                    height: 100
                    source: "ales_icons/waypoint/MainPage/Search.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: textInput
                    height: parent.height
                    font.pixelSize: Constants.btnFontsize
                    verticalAlignment: Text.AlignVCenter
                    placeholderText: "Search"
                    Layout.fillWidth: true
                }
            }
        }
    }

    Button {
        id: btnCreate
        height: 200
        width: 200
        anchors.verticalCenter: parent.verticalCenter
        icon.color: "#00698683"
        icon.height: height
        icon.width: width
        icon.source: "ales_icons/POI/addButton.png"
        anchors.horizontalCenter: parent.horizontalCenter

        display: AbstractButton.IconOnly

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: btnCreateProject
        height: 100
        text: "<font color='#ffffff'>" + "Create Project" + "</font>"
        width: 200
        anchors.bottom: parent.bottom
        display: AbstractButton.TextOnly
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        font: Constants.largeFont

        background: Rectangle {
            color: "blue"
        }
    }
}
