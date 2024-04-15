

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
    id: rectangle
    width: 1920
    height: 1080
    color: Constants.backgroundColor
    property alias mouseLogo: mouseLogo
    property alias btnLogin: btnLogin
    property alias btnMission: btnMission
    property alias btnCamera: btnCamera
    property alias comboBox: comboBox

    Rectangle {
        id: recLogo
        width: 319
        height: 149
        color: "black"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 40
        anchors.topMargin: 40

        Image {
            id: imgLogo
            anchors.fill: parent
            source: "ales_icons/waypoint/MainPage/Argosdynelogo.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseLogo
            anchors.fill: parent
        }
    }

    RoundButton {
        id: btnLogin
        width: 150
        height: 150
        text: ""
        anchors.right: parent.right
        anchors.top: parent.top
        icon.height: 80
        icon.width: 80
        icon.source: "ales_icons/waypoint/MainPage/User.svg"
        anchors.rightMargin: 71
        anchors.topMargin: 47
    }

    RowLayout {
        id: btnRow
        width: 900
        height: 244
        spacing: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter

        ImageButton {
            id: btnCamera
            height: btnRow.height
            width: height * 1.5
            Layout.fillWidth: true
            btnLabelText: "Camera"
            btnImageSource: "ales_icons/waypoint/MainPage/Camera.svg"
        }
        ImageButton {
            id: btnMission
            height: btnRow.height
            width: height * 1.5
            Layout.fillWidth: true
            btnLabelText: "Mission"
            btnImageSource: "ales_icons/waypoint/MainPage/Mission.svg"
        }
    }

    ComboBox {
        id: comboBox
        width: 365
        height: 94
        anchors.top: parent.top
        model: ["AQUILA II", "AQUILA 3F"]
        font: Constants.superLargeFont
        anchors.topMargin: 68
        anchors.horizontalCenter: parent.horizontalCenter
        popup.Material.foreground: "gray"
        Material.accent: Constants.backgroundColor
        Material.foreground: "white"
    }
}
