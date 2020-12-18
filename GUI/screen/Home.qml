import QtQuick 2.9
import QtQuick.Layouts 1.3

import '../common'

Item {
    width: screenWidth
    height: bodyHeight

    //Create Map with default locations
    MapCreatorWithLocation
    {
        id: map_with_default_location
    }

    //Button for Create Track or Train
    GridLayout {
        id: grid
        width: parent.width
        height: iconsize
        columns: 2
        anchors.top:        map_with_default_location.bottom

        Repeater {
            model: ["Create Track", "Create Train"]
            delegate: ButtonCreator {
                width:              iconsize
                height:             width
                Layout.topMargin:   width * 0.50
                Layout.alignment:   Qt.AlignCenter
                source:             "../images/" + modelData + ".png"
                text: modelData
                textColor: colorBK
                labelvShift: stationSize
                onClicked: {
                    createMode = modelData
                    gotoScrId(1);
                }
            }
        }
    }

}


