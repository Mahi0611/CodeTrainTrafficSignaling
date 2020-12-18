import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import trainTrackSystem.backend 1.0
import '../common'
import "../shortestPath/shortestPath.js" as SPath

Rectangle {
    property int startStationIndex: 0
    property int stopStationIndex: 0
    property bool routeStatus: false
    property var pathFromModel: []

    function findRoute() {
            if((startStationIndex != stopStationIndex) &&
              (startStationIndex != 0) && (stopStationIndex != 0)) {

                console.log("Find Route")
                const graph = map.listAdjecencyforLocation[0];
                const shortestPath = SPath.findShortestPath(graph, map.stationList[startStationIndex-1], map.stationList[stopStationIndex-1]);
                pathFromModel = Qt.binding (function() {return shortestPath.path});
                console.log("Path : ", shortestPath.distance, shortestPath.path, pathFromModel.length);
                routeStatus = true;
            }
            else {
                routeStatus = false;
            }
    }

    GridLayout {
        id: gridTrackLayout
        width: screenWidth / 2
        columns: 1
        rowSpacing: -120
        columnSpacing: 0

        Component.onCompleted: {
            refreshModel();
        }

        function refreshModel(){
            startStopStationModel.set(0, { "text": ""});
            startStopStationModel.set(1, { "text": map.stationList[0]});
            startStopStationModel.set(2, { "text": map.stationList[1]});
            startStopStationModel.set(3, { "text": map.stationList[2]});
            startStopStationModel.set(4, { "text": map.stationList[3]});
            startStopStationModel.set(5, { "text": map.stationList[4]});
            startStopStationModel.set(6, { "text": map.stationList[5]});
            startStopStationModel.set(7, { "text": map.stationList[6]});
            startStopStationModel.set(8, { "text": map.stationList[7]});
            startStopStationModel.set(9, { "text": map.stationList[8]});
            startStopStationModel.set(10, { "text": map.stationList[9]});
            startStopStationModel.set(11, { "text": map.stationList[10]});
            startStopStationModel.set(12, { "text": map.stationList[11]});
            startStopStationModel.set(13, { "text": map.stationList[12]});
            startStopStationModel.set(14, { "text": map.stationList[13]});
            startStopStationModel.set(15, { "text": map.stationList[14]});
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
            ListElement { text: "" }
        }

        Repeater {
            id: repeater
            model: [" Select Start Station", " Select End Station  "]
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

                ComboBox {
                    model: startStopStationModel
                    width: 300
                    height: 50
                    font.pixelSize: fontsize
                    anchors.left: description.right
                    anchors.leftMargin: 200
                    onCurrentIndexChanged: {
                        console.log(currentIndex, description.text)
                        if(currentIndex != 0)
                        {
                            if(description.text === " Select Start Station") {
                                startStationIndex = currentIndex
                            }
                            else {
                                stopStationIndex = currentIndex
                            }
                            findRoute()
                        }
                    }
                }
            }
       }
    }

    Text {
        id: description2
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.left: gridTrackLayout.right
        anchors.leftMargin: 100
        font.pixelSize: fontsize
        font.family: notosans.name
        text: " Shortest Route "
    }

    Text {
        id: routeInfor
        width: 500
        text: qsTr(pathFromModel.toString())
        anchors.top: description2.bottom
        anchors.topMargin: 50
        anchors.left: gridTrackLayout.right
        anchors.leftMargin: 100
        font.pixelSize: fontsize
        font.family: notosans.name
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }

    ButtonCreator {
        id: saveButton
        width: buttonsize
        height: buttonsize
        color: colorlightBlue
        text: "Save"
        visible: true
        anchors.top: routeInfor.bottom
        anchors.topMargin: 50
        anchors.left: gridTrackLayout.right
        anchors.leftMargin: 100
        onClicked: {
            console.log("Save Track Details");
            if(!routeStatus) {
                error.visible = true;
            }
            else {
               if(map.curruntTrackCount < map.maxTrackCount) {
                   var route = [];
                   for (var i = 0; i < pathFromModel.length; i++) {
                        route.push(pathFromModel[i]);
                   }
                   map.routeList.push(route);
                   map.curruntTrackCount++;
                   QMLBackend.routeList = map.routeList;
                   QMLBackend.curruntTrackCount = map.curruntTrackCount;
                   newRouteAdded();
               }
               else {
                    console.log("Tracks Count Achieved!")
               }
            }
        }
    }

    Text {
        id: error
        width: 500
        text: qsTr("Please Select Different Start and Stop Point")
        anchors.top: saveButton.bottom
        anchors.topMargin: 30
        anchors.left: gridTrackLayout.right
        anchors.leftMargin: 100
        font.pixelSize: sfontsize
        font.family: notosans.name
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        visible: !routeStatus
    }
}
