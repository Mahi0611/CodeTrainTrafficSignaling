import QtQuick 2.9
import trainTrackSystem.backend 1.0

import '../images'

Rectangle {
    id: header
    width: screenWidth
    height: headerHeight
    color: colorBK

    property string source: ""
    property alias  headertext: headerText.text

    ButtonCreator {
        id: home_icon
        width: buttonsize
        height: buttonsize
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 10
        isRounded: true
        source: "../images/HomeTrain.png"
        color: colorTR
    }

    ButtonCreator {
        id: headerText
        width: buttonsize
        height: buttonsize
        anchors.centerIn: parent
        color: colorTR
        text: "Train Traffic Signaling System"
        visible: true
    }

    ButtonCreator {
        id: backBtn
        width: backbuttonsize
        height: backbuttonsize
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20

//        isRounded: true
        source: "../images/back_w.png"
//        color: colorGY080
        visible: (view.scrId)
        onClicked: {
            view.gobackScr();
        }

    }
}
