import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import '../common'
import trainTrackSystem.backend 1.0

Item {
    id: item_simulation
    width: screenWidth
    height: bodyHeight

    signal showSelectedRoutes();
    signal showTrains();
    property string startStation: ""
    property string endStation: ""
    property var train_parameter: []

    //Show Map with default locations
    MapCreatorWithLocation
    {
        id: map_with_default_location_simulation

        //Show Route
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
            property real width_train: 60
            property real height_train: 20
            property int routenumber: 0
            property var routepoints : []
            property var trainspoints : []

            onPaint: {
                var context = getContext("2d");
                context.save()
                if(routepoints.length > 0){
                    context.strokeStyle = Qt.rgba(0, 1, 1, 0)
                    context.fill()
                    context.stroke()
                    context.beginPath()
                    console.log("OnPaint")
                    var start = routepoints[0]
                    context.moveTo(start["x"], start["y"])
                    for(var j=1; j < routepoints.length; j++){
                        var end= routepoints[j]
                        if(end["routeId"] !== routenumber)
                        {
                            context.closePath();
                            context.strokeStyle = "red"
                            context.lineWidth = 2;
                            context.stroke();
                            context.beginPath();
                            routenumber = end["routeId"];
                        }
                        context.lineTo(end["x"], end["y"])
                        context.moveTo(end["x"], end["y"])
                    }
                    context.closePath()
                    context.strokeStyle = "red"
                    context.lineWidth = 2;
                    context.stroke()
                    routepoints = [];
                }
                if(trainspoints.length > 0) {
                    for(var i=0; i < trainspoints.length; i++){
                        var point= trainspoints[i]
                        context.fillRect(point["x"], point["y"], width_train, height_train)
                        context.fillText(point["num"],point["x"],point["y"]);
                    }
                    context.strokeStyle = Qt.rgba(0, 0, 0, 0)
                    context.lineWidth = 1
                    context.fill()
                    context.stroke()
                    trainspoints = [];
                }
                context.restore()
            }

            Item {
                Connections {
                    target: item_simulation
                    onShowSelectedRoutes: {
                        console.log("Display Routes");
                        for (var k = 0; k < map.routeList.length; k++)
                        {
                            console.log("route : ", k+1);
                            for (var i = 0; i < map.routeList[k].length; i++)
                            {
                                var station = map.routeList[k][i];
                                console.log(station);

                                for (var j = 0; j < map.locationList.length; j++) {
                                   if(map.locationList[j].station === station)
                                   {
                                       console.log(map.locationList[j].station, map.locationList[j].xCoordinate, map.locationList[j].yCoordinate);
                                        mycanvas.routepoints.push({"routeId": k,"x": map.locationList[j].xCoordinate+30, "y": map.locationList[j].yCoordinate+15})
                                   }
                                }
                            }
                            mycanvas.requestPaint()
                        }
                    }
                }
            }

            Item {
                Connections {
                    target: item_simulation
                    onShowSelectedRoutes: {
                        console.log("Show Trains",map.trainList.length)
                        for (var k = 0; k < map.trainList.length; k++)
                        {
                            var ss_station = map.trainList[k].start_t;
                            var st_station = map.trainList[k].end_t;
                            console.log(ss_station,st_station);
                            var x = 0, y = 0;
                            for (var j = 0; j < map.locationList.length; j++) {
                               if(map.locationList[j].station === ss_station) {
                                   x = map.locationList[j].xCoordinate+30
                                   y = map.locationList[j].yCoordinate-10
                                   train_parameter.push(x);
                                   train_parameter.push(y);
                               }
                               if(map.locationList[j].station === st_station) {
//                                   y = map.locationList[j].yCoordinate+30
                                   train_parameter.push(map.locationList[j].xCoordinate+30);
                                   train_parameter.push(map.locationList[j].yCoordinate-10);
                               }

                            }
                            console.log(x,y);
                            mycanvas.trainspoints.push({"num": map.trainList[k].train_id,"x": x, "y": y})
                            mycanvas.requestPaint()
                        }
                    }
                }
            }
        }
    }

    ButtonCreator {
        id: start_simulation
        width: iconsize * 2
        height: buttonsize
        color: colorlightBlue
        text: "Start Simulation"
        visible: true
        anchors.top: map_with_default_location_simulation.bottom
        anchors.topMargin: 50
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: -200
        onClicked: {
            console.log("Start Simulation");
            QMLBackend.startSimulation = true;
        }
    }

    Component.onCompleted:  {
        console.log("Focus true simulation")
        showSelectedRoutes();
        showTrains();
    }
}


