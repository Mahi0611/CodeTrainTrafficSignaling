//#########################################################################################
// Train:
//#########################################################################################

#ifndef TRAIN_H
#define TRAIN_H

#include "CommonHeader.h"
#include <string>
#include <vector>
#include <queue>
using namespace std;

namespace Domain
{
    class Train
    {
    public:
        explicit Train();
        ~Train();

        void AddTrainInformation(int num, queue<StationDistance>& trainRoute);
        string StartTrainJourney();
        void AddWaitTime(int time, Platform &plnum);

    private:
        int TrainNumber;
        string StartLocation;
        string EndLocation;
        vector<string> TrainRoute;
        Signal SignalState;
        string NextStation;
        int TimeToReach;
        TrainState TrainStatus;
        Platform PlatformNumber;
        int CurruntStationIndex;
        int WaitTime;
    };
}

#endif //TRAIN_H
