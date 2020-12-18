//#########################################################################################
// Station:
//#########################################################################################

#include "Station.h"

#include <iostream>
using namespace Domain;
using namespace std;

Station::Station(string name)
    : StationName(name)
    , TrainListStatus()
    , AvailablePlatforms()
    , StopTimeAtStation(5)  //Train stop for 5 mins at each station
{
    AvailablePlatforms.resize(4, false);
}

Station::~Station()
{

}

string Station::GetStationName()
{
    return StationName;
}

//map<int, TrainDetails>
//int timetocome;
//Platform platform;
//int waittime;
//Signal signal;
int Station::NotifyNewTrainComing(int trainNumber, Platform& plnum)
{
    int waitingTime = 0;
    //Train Already Listed
    if(TrainListStatus.find(trainNumber) != TrainListStatus.end())
    {

    }
    else // insert new entry
    {
        TrainDetails details;
        details.timetocome = 50;    //bydefault all times are 50

        //Check for Platform
        details.platform = PlatformNotAssigned;
        details.waittime = 0;
        for(int i = 0; i < AvailablePlatforms.size(); i++)
        {
            if(!AvailablePlatforms[i]) {
                if(i == 0) {details.platform = PlatformOne;}
                if(i == 1) {details.platform = PlatformTwo;}
                if(i == 2) {details.platform = PlatformThree;}
                if(i == 3) {details.platform = PlatformFour;}

                details.signal = Green;
            }
        }

        if(details.platform == PlatformNotAssigned)
        {
            details.signal = Red;
            if(!TrainListStatus.empty()) {
                details.waittime = TrainListStatus[0].timetocome + StopTimeAtStation;
                waitingTime = details.waittime;
            }
        }

        // Assign platform
        plnum = details.platform;
        //Insert entry into list
        TrainListStatus.insert(make_pair(trainNumber, details));
    }

    return waitingTime;
}
