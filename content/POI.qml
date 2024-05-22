import QtQuick 2.15
import Flydynamics2uidesigner
POIForm {
    id: root
    signal setPoiClicked
    signal setRouteClicked

    btnSetPoi.onClicked: {
        root.setPoiClicked()
        btnSetCheckpointVisible=true
        btnGroupBottomVisible = false
        btnCameraSettingVisible = false
        routeStatusVisible = false


    }

    btnSetRoute.onClicked: {
        root.setRouteClicked()
        btnCameraSettingVisible = true
        btnGroupBottomVisible = false
        routeStatusVisible = true
    }

    btnSetCheckpoint.onClicked: {
        btnSetCheckpointVisible=false
        btnGroupBottomVisible = true
        btnCameraSettingVisible = false
    }

    btnExit.onClicked:  {
        btnSetCheckpointVisible=false
        btnGroupBottomVisible = true
        btnCameraSettingVisible = false
        routeStatusVisible = false
    }

    btnDelete.onClicked: {
        resetMissionVisible = true

    }

    btnResetYES.onClicked: {
        resetMissionVisible = false
    }

    btnResetNO.onClicked: {
        resetMissionVisible = false
    }

    btnSave.onClicked: {

        saveMissionVisible = true

    }

    btnSaveYES.onClicked: {
        saveMissionVisible = false
    }

    btnSaveNO.onClicked: {
        saveMissionVisible = false
    }


    btnRename.onClicked: {
        renameMissionVisible = true
    }


    btnRenameYES.onClicked: {
        renameMissionVisible = false
    }

    btnRenameNO.onClicked: {
        renameMissionVisible = false
    }

}
