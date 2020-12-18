//#########################################################################################
// Train:
//#########################################################################################

#include "Train.h"
using namespace Domain;

Train::Train()
    : TrainNumber(0)
    , StartLocation("")
    , EndLocation("")
    , TrainRoute()
    , SignalState(Red)
    , NextStation("")
    , TimeToReach(0)
    , TrainStatus(Stop)
    , PlatformNumber(PlatformNotAssigned)
    , CurruntStationIndex(0)
    , WaitTime(0)
{
}

Train::~Train()
{
}

void Train::AddTrainInformation(int num, queue<StationDistance>& trainRoute)
{
    TrainNumber = num;
    //Extract Start Station and End Station
    if(!trainRoute.empty())
    {
        StationDistance temp = trainRoute.front();
        StartLocation = temp.StationName;
        if(trainRoute.size() == 1)
        {
            EndLocation = temp.StationName;
        }
        else
        {
            temp =  trainRoute.back();
            EndLocation = temp.StationName;
        }
        trainRoute.pop();
    }

    while (!trainRoute.empty())
    {
        StationDistance temp = trainRoute.front();
        TrainRoute.push_back(temp.StationName);
        trainRoute.pop();
    }
}

string Train::StartTrainJourney()
{
    if(!TrainRoute.empty())
    {
        NextStation = TrainRoute[CurruntStationIndex];
        TimeToReach = 50;
        TrainStatus = Moving;
        //start timer

    }
    return NextStation;
}

void Train::AddWaitTime(int time, Platform& plnum)
{
    if(time > 0 && (plnum == PlatformNotAssigned))
    {
        SignalState = Red;
        //Increase counter time
    }
    else
    {
        SignalState = Green;
    }
    PlatformNumber = plnum;
}

//Create timer if signal state is red, notify station in each 1 min

