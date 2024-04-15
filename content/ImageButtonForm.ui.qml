

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import Flydynamics2uidesigner

Item {
    id: root
    width: 100
    height: 50
    property alias btnLabelText: btnLabel.text
    property alias btnImageSource: btnImage.source
    property alias backgroundColor: rectangle.color

    Rectangle {
        id: rectangle
        color: "#373535"
        anchors.fill: parent

        Row {
            id: rowLayout
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                id: btnImage
                height: root.height * 0.6
                anchors.verticalCenter: parent.verticalCenter
                width: root.height * 0.6
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: btnLabel
                text: qsTr("Text")
                color: Constants.btnTextColor
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Constants.btnFontsize
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
