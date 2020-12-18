import QtQuick 2.10
import QtQuick.Controls 2.3

import '../common'

Rectangle
{
    id: mapWithStation
    width: screenWidth
    height: halfScreenMapHeight
    border.color: colorBK
    visible: true

//    Canvas {
//            id: canvas
//            anchors.fill: parent
//            antialiasing: true

//            onPaint: {
//                var context = canvas.getContext("2d")
//                context.strokeStyle = "black"
//                context.lineWidth = 3;
//                context.path = pathAnim4.path
//                context.stroke()
//                context.path = pathAnim3.path
//                context.stroke()
//                context.path = pathAnim2.path
//                context.stroke()
//                console.log("Draw")
//            }
//        }

//    context.beginPath()
//    var start = arrpoints[0]
//    context.moveTo(start["x"], start["y"])
//    for(var j=1; j < arrpoints.length; j++){
//        var end= arrpoints[j]
//        context.lineTo(end["x"], end["y"])
//        context.moveTo(end["x"], end["y"])
//    }
//    context.closePath()


//        SequentialAnimation {
//            id:xx
//            running: true
//            loops: -1

//            PathAnimation {
//                id: pathAnim4

//                duration: 0 //10000
//                path: Path {
//                    startX: map.locationList[0].xCoordinate; startY: map.locationList[0].yCoordinate
//                    PathLine { x: 200; y: 100 }

//                    onChanged: canvas.requestPaint()
//                }
//            }
//            PathAnimation {
//                id: pathAnim3

//                duration: 0 //10000
//                path: Path {
//                    startX: map.locationList[1].xCoordinate; startY: map.locationList[2].yCoordinate
//                    PathLine { x: 200; y: 100 }

//                    onChanged: canvas.requestPaint()
//                }
//            }
//            PathAnimation {
//                id: pathAnim2

//                duration: 0 //10000
//                path: Path {
//                    startX: map.locationList[3].xCoordinate; startY: map.locationList[3].yCoordinate
//                    PathLine { x: 200; y: 100 }

//                    onChanged: canvas.requestPaint()
//                }
//            }
//        }


    Component.onCompleted: {
        refreshModel();
    }
    function refreshModel(){
        stationsModel.set(0, { "station": map.locationList[0].station, "xCoordinate": map.locationList[0].xCoordinate, "yCoordinate": map.locationList[0].yCoordinate});
        stationsModel.set(1, { "station": map.locationList[1].station, "xCoordinate": map.locationList[1].xCoordinate, "yCoordinate": map.locationList[1].yCoordinate});
        stationsModel.set(2, { "station": map.locationList[2].station, "xCoordinate": map.locationList[2].xCoordinate, "yCoordinate": map.locationList[2].yCoordinate});
        stationsModel.set(3, { "station": map.locationList[3].station, "xCoordinate": map.locationList[3].xCoordinate, "yCoordinate": map.locationList[3].yCoordinate});
        stationsModel.set(4, { "station": map.locationList[4].station, "xCoordinate": map.locationList[4].xCoordinate, "yCoordinate": map.locationList[4].yCoordinate});
        stationsModel.set(5, { "station": map.locationList[5].station, "xCoordinate": map.locationList[5].xCoordinate, "yCoordinate": map.locationList[5].yCoordinate});
        stationsModel.set(6, { "station": map.locationList[6].station, "xCoordinate": map.locationList[6].xCoordinate, "yCoordinate": map.locationList[6].yCoordinate});
        stationsModel.set(7, { "station": map.locationList[7].station, "xCoordinate": map.locationList[7].xCoordinate, "yCoordinate": map.locationList[7].yCoordinate});
        stationsModel.set(8, { "station": map.locationList[8].station, "xCoordinate": map.locationList[8].xCoordinate, "yCoordinate": map.locationList[8].yCoordinate});
        stationsModel.set(9, { "station": map.locationList[9].station, "xCoordinate": map.locationList[9].xCoordinate, "yCoordinate": map.locationList[9].yCoordinate});
        stationsModel.set(10, { "station": map.locationList[10].station, "xCoordinate": map.locationList[10].xCoordinate, "yCoordinate": map.locationList[10].yCoordinate});
        stationsModel.set(11, { "station": map.locationList[11].station, "xCoordinate": map.locationList[11].xCoordinate, "yCoordinate": map.locationList[11].yCoordinate});
        stationsModel.set(12, { "station": map.locationList[12].station, "xCoordinate": map.locationList[12].xCoordinate, "yCoordinate": map.locationList[12].yCoordinate});
        stationsModel.set(13, { "station": map.locationList[13].station, "xCoordinate": map.locationList[13].xCoordinate, "yCoordinate": map.locationList[13].yCoordinate});
        stationsModel.set(14, { "station": map.locationList[14].station, "xCoordinate": map.locationList[14].xCoordinate, "yCoordinate": map.locationList[14].yCoordinate});
    }

    ListModel {
        id: stationsModel
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
        ListElement { station: ""; xCoordinate: 0; yCoordinate: 0}
    }

    Repeater {
        id: repeater
        z: 1
        model: stationsModel
        delegate: Rectangle {
            width: stationSize
            height: stationSize
            RadioDelegate {
                id: radioDelegate
                x: xCoordinate
                y: yCoordinate
                checked: true
            }
            Text {
                id: station_name
                text: station
                x: xCoordinate
                y: yCoordinate+30
            }
        }
    }
}
