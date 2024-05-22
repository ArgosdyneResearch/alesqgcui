import QtQuick 6.5
import QtQuick.Controls 6.5
import Flydynamics2uidesigner
import QtQuick.Layouts

Rectangle {
    id: rootPoi
    width: 1080
    height: 720

    property color backgroundColor: "#000000"
    property double btnFontSize: 20

    color: Constants.backgroundColor
    property alias btnDelete: btnDelete
    property alias btnSave: btnSave
    property alias btnRename: btnRename
    property alias btnResetYES: btnResetYES
    property alias btnResetNO: btnResetNO
    property alias btnSaveYES: btnSaveYES
    property alias btnSaveNO: btnSaveNO
    property alias btnRenameYES: btnRenameYES
    property alias btnRenameNO: btnRenameNO
    property alias resetMissionVisible: resetMission.visible
    property alias renameMissionVisible: renameMission.visible
    property alias saveMissionVisible: saveMission.visible
    property alias routeStatusVisible: routeStatus.visible
    property alias btnExit: btnExit
    property alias btnSetCheckpoint: btnSetCheckpoint
    property alias btnCameraSettingVisible: btnCameraSetting.visible
    property alias btnGroupBottomVisible: btnGroupBottom.visible
    property alias btnSetCheckpointVisible: btnSetCheckpoint.visible
    property alias btnSetRoute: btnSetRoute
    property alias btnSetPoi: btnSetPoi

    Rectangle {
        id: recMap
        anchors.fill: parent
        color: "gray"

        Image {
            id: imgMap
            anchors.fill: parent
            source: "ales_icons/POI_V1/back_ground.png"
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: resetMission
        anchors.centerIn: parent
        width: rootPoi.width / 4
        height: rootPoi.height / 4
        color: "#3c3737"
        radius: 5
        visible: false
        Rectangle {
            width: resetMission.width
            height: resetMission.height / 4
            color: "black"
            radius: 5
            Text {
                anchors.centerIn: parent
                font.pixelSize: Constants.defaultFontPointSize * 2
                color: "#ffffff"
                text: qsTr("INFORMATION")
            }
        }

        Text {
            anchors.centerIn: parent
            font.pixelSize: Constants.defaultFontPointSize * 2
            color: "#ffffff"
            text: qsTr("Are you sure to reset the mission?")
        }

        RowLayout {

            width: parent.width
            height: parent.height / 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            spacing: 10

            Button {
                id: btnResetNO
                text: "NO"
                Layout.preferredWidth: resetMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
            Button {
                id: btnResetYES
                text: "YES"
                Layout.preferredWidth: resetMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
        }
    }

    Rectangle {
        id: saveMission
        anchors.centerIn: parent
        width: rootPoi.width / 4
        height: rootPoi.height / 4
        color: "#3c3737"
        radius: 5
        visible: false
        Rectangle {
            id: titleBar
            width: saveMission.width
            height: saveMission.height / 4
            color: "black"
            radius: 5
            Text {
                anchors.centerIn: parent
                font.pixelSize: Constants.defaultFontPointSize * 2
                color: "#ffffff"
                text: qsTr("Save")
            }
        }

        Rectangle {
            anchors.top: titleBar.bottom
            anchors.bottom: bottomBar.top
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            ColumnLayout {
                anchors.centerIn: parent
                width: parent.width - 20
                spacing: 20
                Text {
                    Layout.fillWidth: true
                    Layout.preferredHeight: Constants.defaultFontPointSize * 2
                    font.pixelSize: Constants.defaultFontPointSize * 2
                    color: "#ffffff"
                    text: qsTr("Are you sure to save?")
                }
                TextField {
                    color: "#000000"
                    Layout.preferredHeight: Constants.defaultFontPointSize * 4
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    text: "New Mission 1"

                    background: Rectangle {}
                }
            }
        }

        RowLayout {
            id: bottomBar
            width: parent.width
            height: parent.height / 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            spacing: 10

            Button {
                id: btnSaveNO
                text: "NO"
                Layout.preferredWidth: saveMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
            Button {
                id: btnSaveYES
                text: "YES"
                Layout.preferredWidth: saveMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
        }
    }

    Rectangle {
        id: renameMission
        anchors.centerIn: parent
        width: rootPoi.width / 4
        height: rootPoi.height / 4
        color: "#3c3737"
        radius: 5
        visible: false
        Rectangle {
            id: titleBarRename
            width: renameMission.width
            height: renameMission.height / 4
            color: "black"
            radius: 5
            Text {
                anchors.centerIn: parent
                font.pixelSize: Constants.defaultFontPointSize * 2
                color: "#ffffff"
                text: qsTr("Rename")
            }
        }

        Rectangle {
            color: "transparent"
            anchors.top: titleBarRename.bottom
            anchors.bottom: bottomBarRename.top
            anchors.left: parent.left
            anchors.right: parent.right

            ColumnLayout {
                anchors.centerIn: parent
                width: parent.width - 20
                spacing: 20
                Text {
                    Layout.fillWidth: true
                    Layout.preferredHeight: Constants.defaultFontPointSize * 2
                    font.pixelSize: Constants.defaultFontPointSize * 2
                    color: "#ffffff"
                    text: qsTr("Are you sure to rename?")
                }
                TextField {
                    color: "#000000"
                    Layout.preferredHeight: Constants.defaultFontPointSize * 4
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    text: "New Mission 1"

                    background: Rectangle {}
                }
            }
        }

        RowLayout {
            id: bottomBarRename
            width: parent.width
            height: parent.height / 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            spacing: 10

            Button {
                id: btnRenameNO
                text: "NO"
                Layout.preferredWidth: renameMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
            Button {
                id: btnRenameYES
                text: "YES"
                Layout.preferredWidth: renameMission.width / 2.5
                display: AbstractButton.TextOnly
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle {
                    color: "transparent"
                    border.color: "grey"
                }
                Material.foreground: "white"
            }
        }
    }

    Rectangle {
        id: recControl
        height: 80
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        color: "#66000000"

        Image {
            id: imgLogo
            width: parent.height
            height: parent.height
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 10
            source: "ales_icons/POI_V1/common_Logo.png"
        }

        Rectangle {
            id: recSelection
            width: 220
            height: 80
            anchors.left: imgLogo.right
            anchors.leftMargin: 10
            color: "#3D71D7"
            RowLayout {
                anchors.fill: parent
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                spacing: 10

                Image {
                    Layout.alignment: Qt.AlignVCenter
                    source: "ales_icons/POI_V1/POI_mini_icon.svg"
                    sourceSize: Qt.size(40, 50)
                    fillMode: Image.Stretch
                }

                ComboBox {
                    id: comboBox
                    height: recSelection.height
                    Layout.fillWidth: true
                    model: ["POI", "HPOI", "POLYGON"]
                    font.pixelSize: btnFontSize

                    // Custom styling for the ComboBox
                    background: Rectangle {
                        color: "transparent"
                        implicitWidth: 120
                        implicitHeight: 40
                        radius: 2
                    }
                    popup.Material.foreground: "gray"
                    Material.accent: backgroundColor
                    Material.foreground: "white"
                }
            }
        }

        RowLayout {
            id: rowlSetup
            anchors.right: parent.right

            height: parent.height
            width: 120

            Rectangle {
                height: 40
                width: height
                Layout.alignment: Qt.AlignVCenter
                color: "transparent"
                Image {
                    anchors.fill: parent
                    source: "ales_icons/common/common_GPS_ON.png"
                }
            }
            Rectangle {
                height: 40
                width: height
                Layout.alignment: Qt.AlignVCenter
                color: "transparent"
                Image {
                    anchors.fill: parent
                    source: "ales_icons/POI_V1/commonSetting.png"
                }
            }
        }

        Rectangle {
            height: parent.height
            anchors.left: recSelection.right
            anchors.right: rowlSetup.left
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                spacing: 10

                ToolButton {
                    Layout.fillHeight: true
                    text: qsTr("10:58")
                    icon.height: 30
                    icon.width: 30
                    font.pointSize: 20
                    icon.color: "#ddfffdfd"
                    icon.source: "ales_icons/POI_V1/battery.svg"
                    Material.foreground: "white"
                }

                ToolButton {
                    Layout.fillHeight: true
                    text: qsTr("10:58")
                    icon.height: 30
                    icon.width: 30
                    font.pointSize: 20
                    icon.color: "#ddfffdfd"
                    icon.source: "ales_icons/POI_V1/altitude.svg"
                    Material.foreground: "white"
                }

                ToolButton {
                    Layout.fillHeight: true
                    text: qsTr("10:58")
                    icon.height: 30
                    icon.width: 30
                    font.pointSize: 20
                    icon.color: "#ddfffdfd"
                    icon.source: "ales_icons/POI_V1/distance.svg"
                    Material.foreground: "white"
                }

                ToolButton {
                    Layout.fillHeight: true
                    text: qsTr("10:58")
                    icon.height: 30
                    icon.width: 30
                    font.pointSize: 20
                    icon.color: "#ddfffdfd"
                    icon.source: "ales_icons/POI_V1/speed.svg"
                    Material.foreground: "white"
                }
                Rectangle {
                    Layout.alignment: Qt.AlignVCenter
                    color: "transparent"
                    Layout.fillWidth: true
                }
            }
        }
    }

    Rectangle {
        id: btnGroupBottom
        y: 583
        height: 80
        width: 600
        radius: 5
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 57
        anchors.horizontalCenter: parent.horizontalCenter
        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            spacing: 8
            ToolButton {
                id: btnSetPoi
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/poi_setting.svg"
                Material.foreground: "white"
            }

            ToolButton {
                id: btnSetRoute
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/route_setting.svg"
                Material.foreground: "white"
            }

            ToolSeparator {}

            ToolButton {
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/minus.svg"
                Material.foreground: "white"
            }

            ToolButton {
                id: btnDelete
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/delete_all.svg"
                Material.foreground: "white"
            }

            ToolButton {
                id: btnSave
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/save_mission.svg"
                Material.foreground: "white"
            }

            ToolButton {
                id: btnRename
                Layout.fillHeight: true
                display: AbstractButton.IconOnly
                icon.height: 60
                icon.width: 60
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/mission_rename.svg"
                Material.foreground: "white"
            }
        }
    }

    Rectangle {
        id: btnGroupRight
        height: 300
        width: 80
        anchors.right: parent.right
        anchors.rightMargin: 30
        color: "transparent"
        anchors.verticalCenter: parent.verticalCenter

        ColumnLayout {
            anchors.fill: parent
            spacing: 10
            ToolButton {
                Layout.fillWidth: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/take_image.svg"
                Material.foreground: "white"
            }

            ToolButton {
                Layout.fillWidth: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/record.svg"
                Material.foreground: "white"
            }

            ToolButton {
                Layout.fillWidth: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "transparent"
                icon.source: "ales_icons/POI_V1/switch_camera.svg"
                Material.foreground: "white"
            }
        }
    }

    Button {
        id: btnSetCheckpoint
        visible: false
        width: 200
        height: 80
        text: "Set checkpoint"
        anchors.bottom: parent.bottom
        font.pointSize: 15
        anchors.bottomMargin: 71
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#3d71d7"
            radius: 5
        }
        Material.foreground: "white"
    }

    Rectangle {
        id: btnGroupLeft
        height: 200
        width: 80
        color: "transparent"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30

        ColumnLayout {
            anchors.fill: parent
            spacing: 10
            ToolButton {
                Layout.fillWidth: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "#00000000"
                icon.source: "ales_icons/POI_V1/view_video.svg"
                Material.foreground: "white"
            }

            ToolButton {
                id: btnCameraSetting
                visible: false
                Layout.fillWidth: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "#00000000"
                icon.source: "ales_icons/POI_V1/camera_setting.svg"
                Material.foreground: "white"
            }
        }
    }

    Rectangle {
        id: routeStatus
        height: 80
        width: 800
        visible: false
        color: "#5c5c5c"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 110
        anchors.leftMargin: 140
        RowLayout {
            anchors.fill: parent
            spacing: 5

            Rectangle {
                Layout.fillHeight: true
                width: 100
                color: "#393838"
                Text {
                    color: "#ffffff"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 20
                    text: "Route"
                }
            }

            Rectangle {
                Layout.fillHeight: true
                width: 100
                color: "transparent"
                ColumnLayout {
                    anchors.centerIn: parent
                    Text {
                        color: "#fffefe"
                        text: "60m"
                        font.pointSize: 15
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                    Text {
                        color: "#ffffff"
                        text: qsTr("Altitude")
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }
            }

            Rectangle {
                Layout.fillHeight: true
                width: 100
                color: "transparent"
                ColumnLayout {
                    anchors.centerIn: parent
                    Text {
                        color: "#fffefe"
                        text: "5m"
                        font.pointSize: 15
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                    Text {
                        color: "#ffffff"
                        text: qsTr("Radius (m)")
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }
            }
            Rectangle {
                Layout.fillHeight: true
                width: 130
                color: "transparent"
                ColumnLayout {
                    anchors.centerIn: parent
                    Text {
                        color: "#fffefe"
                        text: "Left-18km/h"
                        font.pointSize: 15
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                    Text {
                        color: "#ffffff"
                        text: qsTr("Direction & Speed")
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }
            }

            Rectangle {
                Layout.fillHeight: true
                width: 100
                color: "transparent"
                ColumnLayout {
                    anchors.centerIn: parent
                    Text {
                        color: "#fffefe"
                        text: "45"
                        font.pointSize: 15
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                    Text {
                        color: "#ffffff"
                        text: qsTr("Gimbal Pitch")
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
            }

            ToolSeparator {}

            ToolButton {
                id: btnExit
                visible: true
                display: AbstractButton.IconOnly
                icon.height: 80
                icon.width: 80
                font.pointSize: 20
                icon.color: "#00000000"
                icon.source: "ales_icons/POI_V1/exit_back.svg"
                Material.foreground: "white"
            }
        }
    }
}
