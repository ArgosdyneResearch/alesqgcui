pragma Singleton
import QtQuick 6.5
import QtQuick.Studio.Application

QtObject {
    readonly property int width: 1596
    readonly property int height: 950
    readonly property color btnBackgroundColor: "#4DD9D9D9"
    readonly property color btnTextColor: "white"
    readonly property int btnFontsize: 30
    property string relativeFontDirectory: "fonts"

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: Qt.application.font.family,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })
    readonly property font superLargeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 4
                                              })
    readonly property color backgroundColor: "#000000"


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../../content/" + relativeFontDirectory)
    }
}
