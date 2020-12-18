import QtQuick 2.10
import QtQuick.Controls 2.3

import './common'
import './screen'
import trainTrackSystem.backend 1.0

ApplicationWindow {
    id: main_application

    width: screenWidth
    height: screenHeight
    visible: true
    title: qsTr("Train Traffic Signaling System")

    property int    screenHeight        : 1000
    property int    screenWidth         : 1500   
    property int    headerHeight        : 100         //header height
    property int    bodyHeight          : 860        //body height
    property int    footerHeight        : 90         //footer height
    property int    stationSize         : 120
    property int    halfScreenMapHeight : 420
    property int    iconsize            : 200        //icon size
    property int    buttonsize          : 100
    property int    backbuttonsize      : 80
    property int    fontsize            : 30         //font for titles, text etc
    property int    sfontsize           : 20         //font for titles, text etc
    property int    mfontsize           : 60
    property int    lfontsize           : 90
    readonly property string colorBK     : "#000000"
    readonly property string colorTR     : "#006f4ea3"
    readonly property string colorWT     : "#FFFFFF"
    readonly property string colorBlue     : "#5050b8"
    readonly property string colorlightBlue     : "#49bdf6"

    property string createMode

    property var map: {
        "maxTrackCount"         : 10,
        "curruntTrackCount"     : 0,
        "maxTrainCount"         : 5,
        "curruntTrainCount"     : 0,
        "locationList": [
            {
                station : "Toronto",
                xCoordinate: 738,
                yCoordinate: 246
            },
            {
                station : "Scarborough",
                xCoordinate:1014,
                yCoordinate:204
            },
            {
                station : "Pickering",
                xCoordinate: 1256,
                yCoordinate: 175
            },
            {
                station : "Oshawa",
                xCoordinate: 1440,
                yCoordinate: 143
            },
            {
                station : "Oakville",
                xCoordinate: 390,
                yCoordinate: 309
            },
            {
                station : "Hamilton",
                xCoordinate: 23,
                yCoordinate: 363
            },
            {
                station : "Milton",
                xCoordinate: 118,
                yCoordinate: 273
            },
            {
                station : "Etobicoke",
                xCoordinate: 582,
                yCoordinate: 181
            },
            {
                station : "Brampton",
                xCoordinate: 451,
                yCoordinate: 60
            },
            {
                station : "GeorgeTown",
                xCoordinate: 241,
                yCoordinate: 80
            },
            {
                station : "Acton",
                xCoordinate: 30,
                yCoordinate: 120
            },
            {
                station : "Mississuaga",
                xCoordinate: 451,
                yCoordinate: 204
            },
            {
                station : "RichmondHill",
                xCoordinate: 738,
                yCoordinate: 20
            },
            {
                station : "Markham",
                xCoordinate: 1133,
                yCoordinate: 28
            }
        ],

        "stationList" : [
            "Acton",
            "Brampton",
            "Etobicoke",
            "GeorgeTown",
            "Hamilton",
            "Markham",
            "Milton",
            "Mississuaga",
            "Oakville",
            "Oshawa",
            "Pickering",
            "RichmondHill",
            "Scarborough",
            "Toronto",
        ],

         "listAdjecencyforLocation" : [
            {
                "start"         : { Acton: 0, Brampton: 0, Etobicoke: 0, GeorgeTown: 0,Hamilton: 0, Markham: 0, Milton: 0,Mississuaga: 0,Oakville: 0,Oshawa: 0,Pickering: 0,RichmondHill: 0,Scarborough: 0,Toronto: 0},
                "Acton"         : { GeorgeTown: 20, Hamilton: 50, Milton: 24, end:0},
                "Brampton"      : { GeorgeTown: 26, Etobicoke: 28,  Mississuaga: 22, RichmondHill: 40},
                "Etobicoke"     : { Brampton: 28, Mississuaga: 23, RichmondHill: 37,Toronto: 17 },
                "GeorgeTown"    : { Acton: 20, Brampton: 26, Milton: 27, Mississuaga: 29 },
                "Hamilton"      : { Acton: 50, Milton: 31, Oakville: 38, end:0},
                "Markham"       : { RichmondHill: 32, Oshawa: 62,Pickering: 41, Scarborough: 28},
                "Milton"        : { Acton: 24, GeorgeTown: 27, Oakville: 30,  Hamilton: 31},
                "Mississuaga"   : { Brampton: 22,  Etobicoke: 23, GeorgeTown: 29, Oakville: 21},
                "Oakville"      : { Milton: 30, Hamilton: 38, Mississuaga: 21, Toronto: 34 },
                "Oshawa"        : { Markham: 62, Pickering: 31,end:0},
                "Pickering"     : { Markham: 41, Oshawa: 31, Scarborough: 16 },
                "RichmondHill"  : { Brampton: 40,  Etobicoke: 37, Scarborough: 35,Toronto: 39, Markham: 32, end:0},
                "Scarborough"   : { RichmondHill: 35, Markham: 28, Toronto: 24, Pickering: 16},
                "Toronto"       : {  Etobicoke: 17, Oakville: 34, RichmondHill: 39, Scarborough: 24 },
                "end"           : {},
            }
        ],

        "routeList" : [],
        "trainList" : [
                    {
                        train_id : "0",
                        start_t: "",
                        end_t: ""
                    },
                    {
                        train_id : "0",
                        start_t: "",
                        end_t: ""
                    },
                    {
                        train_id : "0",
                        start_t: "",
                        end_t: ""
                    },
                    {
                        train_id : "0",
                        start_t: "",
                        end_t: ""
                    },
                    {
                        train_id : "0",
                        start_t: "",
                        end_t: ""
                    },
                ],
    }

    function resetValues() {
        createMode = "";
    }

    Loader {
        id: view
        anchors.top: header.bottom
        source: screenValues[scrId].source

        property int scrId: 0
        property int prevScrId: 0
        property var scrIdHistory: [0]
        property var screenValues: [
            {source: "screen/Home.qml",               headertext: "Train Traffic Signaling System", headerSrc: ""},
            {source: "screen/CreateTrainTrack.qml",   headertext: "Create Trains / Tracks", headerSrc: ""},
            {source: "screen/Simulation.qml",         headertext: "Simulation", headerSrc: ""},
        ]

        function gotoScrId(id){
            prevScrId = scrId;
            scrId = id;
            if(prevScrId !== id)
            {
                scrIdHistory.push(id);
            }
        }

        function gobackScr(){
            if (scrIdHistory.length > 1){
                scrIdHistory.pop();
                scrId = prevScrId;
                prevScrId = (scrIdHistory.length > 1)? scrIdHistory[scrIdHistory.length -2] : 0;
            }
        }

        onScrIdChanged: {
            if (scrId == 0) {
                resetValues()
            }
            //set the source-path of the component
            setSource(screenValues[scrId].source);

            //update the header
            header.headertext   = screenValues[scrId].headertext
            header.source   = screenValues[scrId].headerSrc
        }
    }

    Header {
        id: header
        anchors.top: parent.top
    }

    footer: TabBar {
        id: tabBar
        currentIndex: view.scrId

        TabButton {
            text: qsTr("Home")
            onClicked: {
                view.gotoScrId(0);
            }
        }
        TabButton {
            text: qsTr("Simulation")
            onClicked: {
                view.gotoScrId(2);
            }
        }
    }

    FontLoader {
        id:notosans
        source:"fonts/NotoSans-Regular.ttf"
    }

    Component.onCompleted: {
        QMLBackend.maxTrackCount = map.maxTrackCount;
        QMLBackend.curruntTrackCount = map.curruntTrackCount;
        QMLBackend.maxTrainCount = map.maxTrainCount;
        QMLBackend.curruntTrainCount = map.curruntTrainCount;
        QMLBackend.locationList = map.locationList;
        QMLBackend.stationList = map.stationList;
        QMLBackend.routeList = map.routeList;
        QMLBackend.trainList = map.trainList;
        QMLBackend.listAdjecencyforLocation = map.listAdjecencyforLocation;
    }
}
