import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    id: button
    property int    offsetDir   : 0
    property alias  color       : main_container.color
    property bool   isText      : false
    property alias  textColor   : text.color
    property int    labelvShift : 0
    property alias  textSize    : text.font.pixelSize
    property alias  text        : text.text
    property bool   isRounded   : false
    property alias  source      : image.source
    property bool   shadowed    : false
    property bool   haseffect   : false
    property alias  radius      : main_container.radius
    property color  borderColor : main_container.color
    property int    borderWidth : width/30

    signal clicked

    Rectangle {
        id: main_container
        width: parent.width
        height: parent.height
        color: colorTR
        border.color: borderColor
        border.width: borderWidth
        radius: isRounded * width * 0.5

        Image {
            id: image
            width: parent.width
            height: (sourceSize.height/sourceSize.width) * width
            anchors.centerIn: parent
            anchors.verticalCenterOffset: (width-height) * (offsetDir)
            visible: !isText
        }

        Text {
            id: text
            width: 300 //parent.width
            height: sfontsize
            anchors.centerIn: parent
            anchors.verticalCenterOffset: button.labelvShift
            color: colorWT
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: fontsize
            font.family: notosans.name
            visible: true
        }

        MouseArea {
            id: mousearea
            anchors.fill: parent

            onPressed: {
                main_container.border.color = colorBlue;
            }

            onReleased: {
                main_container.border.color = button.borderColor;
            }

            onHoveredChanged: {
                main_container.border.color = button.borderColor;
            }

            Component.onCompleted:  {
                mousearea.clicked.connect(button.clicked)
            }
        }
    }
}
