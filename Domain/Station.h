//#########################################################################################
// Station:
//#########################################################################################

#ifndef STATION_H
#define STATION_H

#include "CommonHeader.h"
#include <string>
#include <vector>
using namespace std;

namespace Domain
{
    class Station
    {
    public:
        explicit Station(string name);
        ~Station();

        string GetStationName();
        int NotifyNewTrainComing(int trainNumber, Platform &plnum);

    private:
        string StationName;
        map<int, TrainDetails> TrainListStatus;
        vector<bool> AvailablePlatforms;
        int StopTimeAtStation;
    };
}

#endif //STATION_H
