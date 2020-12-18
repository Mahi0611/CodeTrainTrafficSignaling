import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    RadioDelegate {
        id: radioDelegate
        x: 261
        y: 94
        text: qsTr("Union Tornoto")
        checked: true
    }

//    Canvas {
//        id: mycanvas
//        width: screenWidth
//        height: halfScreenMapHeight
//        function clear() {
//            var ctx = getContext("2d");
//            ctx.reset();
//            mycanvas.requestPaint();
//        }

//        Path {
//            id: myPath
//            startX: 0; startY: 100
//            PathLine { x: 400; y: 500 }
//        }
//        property real radius: 10
//        property var arrpoints : []

//        onPaint: {
//            var context = getContext("2d");
//            context.save()
//            if(arrpoints.length > 0){
////                    for(var i=0; i < arrpoints.length; i++){
////                        var point= arrpoints[i]
////                        context.ellipse(point["x"]-radius, point["y"]-radius, 2*radius, 2*radius)
////                    }
//                context.strokeStyle = Qt.rgba(0, 1, 1, 0)
//                context.fill()
//                context.stroke()
//                context.beginPath()
//                var start = arrpoints[0]
//                context.moveTo(start["x"], start["y"])
//                for(var j=1; j < arrpoints.length; j++){
//                    var end= arrpoints[j]
//                    context.lineTo(end["x"], end["y"])
//                    context.moveTo(end["x"], end["y"])
//                }
//                context.closePath()
//                context.strokeStyle = "red"
//                context.lineWidth = 2;
//                context.stroke()
//            }
//            context.restore()
//        }

//        MouseArea {
//            id: mymouse
//            anchors.fill: parent
//            onClicked: {
//                mycanvas.arrpoints.push({"x": mouseX, "y": mouseY})
//                mycanvas.requestPaint()
//            }
//        }
//    }
}
