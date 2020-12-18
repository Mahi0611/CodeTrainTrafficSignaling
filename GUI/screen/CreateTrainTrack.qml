import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import '../common'

Item {
    id: item1
    width: screenWidth
    height: bodyHeight

    signal newRouteAdded();
    signal newTrainAdded();

    //Create Map with default locations
    MapCreatorWithLocation
    {
        id: map_with_default_location
        Canvas {
            id: mycanvas
            width: screenWidth
            height: halfScreenMapHeight

            function clear() {
                var ctx = getContext("2d");
                ctx.reset();
                mycanvas.requestPaint();
            }

            Path {
                id: myPath
                startX: 0; startY: 100
                PathLine { x: 400; y: 500 }
            }
            property real radius: 10
            property var arrpoints : []

            onPaint: {
                var context = getContext("2d");
                context.save()
                if(arrpoints.length > 0){
                    context.strokeStyle = Qt.rgba(0, 1, 1, 0)
                    context.fill()
                    context.stroke()
                    context.beginPath()
                    var start = arrpoints[0]
                    context.moveTo(start["x"], start["y"])
                    for(var j=1; j < arrpoints.length; j++){
                        var end= arrpoints[j]
                        context.lineTo(end["x"], end["y"])
                        context.moveTo(end["x"], end["y"])
                    }
                    context.closePath()
                    context.strokeStyle = "red"
                    context.lineWidth = 2;
                    context.stroke()
                    arrpoints = [];
                }
                context.restore()
            }

            Item {
                Connections {
                    target: item1
                    onNewRouteAdded: {
                        console.log("NewRouteAdded");
                        for (var i = 0; i < map.routeList[map.curruntTrackCount-1].length; i++)
                        {
                            var station = map.routeList[map.curruntTrackCount-1][i];
                            console.log(station);

                            for (var j = 0; j < map.locationList.length; j++) {
                               if(map.locationList[j].station === station)
                               {
                                   console.log(map.locationList[j].station, map.locationList[j].xCoordinate, map.locationList[j].yCoordinate);
                                    mycanvas.arrpoints.push({"x": map.locationList[j].xCoordinate+30, "y": map.locationList[j].yCoordinate+15})
                                    mycanvas.requestPaint()
                               }
                            }
                        }
                    }
                }
            }
        }
    }


    //Create Track
    CreateTrack {
        id: create_track_screen
        visible: (createMode === "Create Track")
        anchors.top:        map_with_default_location.bottom
        anchors.topMargin: 50
    }

    //Create Train
    CreateTrain {
        id: create_train_screen
        visible: (createMode === "Create Train")
        anchors.top:        map_with_default_location.bottom
        anchors.topMargin: 50
    }
}


