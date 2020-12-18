//#########################################################################################
// CommonHeader: Data Structrure Formats and Constants
//#########################################################################################

#ifndef COMMON_HEARER_H
#define COMMON_HEARER_H

#include <QString>
#include <vector>
#include <map>
#include <string>
using namespace std;

namespace Domain
{
    const QString MapFile = "Map.json";

    typedef enum Signal
    {
        Red = 0,
        Green
    }Signal;

    typedef enum TrainState
    {
        Stop = 0,
        Moving
    }TrainState;

    typedef enum Platform
    {
        PlatformNotAssigned = 0,
        PlatformOne,    //going towards left
        PlatformTwo,    //going toward right
        PlatformThree,  // side platform for left
        PlatformFour    //side platform for right
    }Platform;

    typedef enum StationNames {
        Acton = 0,
        Brampton,
        Etobicoke,
        GeorgeTown,
        Hamilton,
        Markham,
        Milton,
        Mississuaga,
        Oakville,
        Oshawa,
        Pickering,
        RichmondHill,
        Scarborough,
        Toronto,
    } StationNames;

    //LocationListAdjecencyRepresenation
    struct StationDistance
    {
        string StationName;
        int Distance;
    };

    struct TrainDetails
    {
        int timetocome;
        Platform platform;
        int waittime;
        Signal signal;
    };
}

#endif //COMMON_HEARER_H
