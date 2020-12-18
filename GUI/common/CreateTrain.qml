import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import trainTrackSystem.backend 1.0
import '../common'

GridLayout {
    id: gridTrainLayout
    width: screenWidth / 2
    columns: 1
    rowSpacing: -120
    columnSpacing: 0
    property bool trainStatus: false

    Component.onCompleted: {
        refreshModel();
    }

    property int startStationIndex: 0
    property int stopStationIndex: 0
    property int trainNumber: 0

    function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function refreshModel(){
        startStopStationModel.set(0, { "text": map.stationList[0]});
        startStopStationModel.set(1, { "text": map.stationList[1]});
        startStopStationModel.set(2, { "text": map.stationList[2]});
        startStopStationModel.set(3, { "text": map.stationList[3]});
        startStopStationModel.set(4, { "text": map.stationList[4]});
        startStopStationModel.set(5, { "text": map.stationList[5]});
        startStopStationModel.set(6, { "text": map.stationList[6]});
        startStopStationModel.set(7, { "text": map.stationList[7]});
        startStopStationModel.set(8, { "text": map.stationList[8]});
        startStopStationModel.set(9, { "text": map.stationList[9]});
        startStopStationModel.set(10, { "text": map.stationList[10]});
        startStopStationModel.set(11, { "text": map.stationList[11]});
        startStopStationModel.set(12, { "text": map.stationList[12]});
        startStopStationModel.set(13, { "text": map.stationList[13]});
        startStopStationModel.set(14, { "text": map.stationList[14]});
    }

    ListModel {
        id: startStopStationModel
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
        ListElement { text: "" }
    }

    Repeater {
        id: repeater
        model: [" Train Number", " Train Start Station", " Train End Station  "]
        delegate: Rectangle {
            width: parent.width / 2
            height: bodyHeight / 4
            Layout.columnSpan: 1
            color: colorTR

            Text {
                id: description
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: fontsize
                font.family: notosans.name
                color: colorBK
                text: modelData
            }

            Text {
                id: train_number
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: description.right
                anchors.leftMargin: 250
                font.pixelSize: fontsize
                font.family: notosans.name
                color: colorBK
                text: getRandomInt(1000,2000)
                visible: (description.text === " Train Number")
            }

            ComboBox {
                id: combo_box
                model: startStopStationModel
                width: 300
                height: 50
                font.pixelSize: fontsize
                anchors.left: description.right
                anchors.leftMargin: 200
                visible: (description.text !== " Train Number")
                onCurrentIndexChanged: {
                    console.log( currentIndex, description.text)
                    if(description.text === " Train Start Station") {
                        startStationIndex = currentIndex
                    }
                    else {
                        stopStationIndex = currentIndex
                    }
                }
            }
        }
   }

    ButtonCreator {
        id: saveButton
        width: buttonsize
        height: buttonsize
        color: colorlightBlue
        text: "Save"
        anchors.left: parent.horizontalCenter
        visible: true
        onClicked: {
            console.log("Save Train Details");
            console.log(map.stationList[startStationIndex].toString(), map.stationList[stopStationIndex], trainNumber)
            if(startStationIndex !== stopStationIndex)
            {
                if(map.curruntTrainCount < map.maxTrainCount) {

                    trainNumber = getRandomInt(1000,2000);
                    map.trainList[map.curruntTrainCount].train_id = trainNumber.toString();
                    map.trainList[map.curruntTrainCount].start_t = map.stationList[startStationIndex].toString();
                    map.trainList[map.curruntTrainCount].end_t = map.stationList[stopStationIndex].toString();
                    map.curruntTrainCount++;
                    error.text = qsTr("");
                    QMLBackend.trainList = map.trainList;
                    QMLBackend.curruntTrainCount = map.curruntTrainCount;
                    newTrainAdded();
                }
                else {
                     console.log("Train Count Achieved!")
                    error.text = qsTr("Train Count Reached at Max")
                    trainStatus = true
                }
            }
            else {
                console.log("Same Stop Selected!")
                error.text = qsTr("Please Select Different Start and Stop Point")
                trainStatus = true
            }
        }
    }

    Text {
        id: error
        width: 500
        text: qsTr("")
        anchors.topMargin: 30
        anchors.left: gridTrainLayout.right
        anchors.leftMargin: 100
        font.pixelSize: sfontsize
        font.family: notosans.name
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        visible: trainStatus
    }
}
