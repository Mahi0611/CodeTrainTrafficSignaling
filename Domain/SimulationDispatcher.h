//#########################################################################################
// SimulationDispatcher:
//#########################################################################################

#ifndef SIMULATION_DISPATCHER_H
#define SIMULATION_DISPATCHER_H

#include "CommonHeader.h"
#include "Train.h"
#include "Station.h"
#include <QVariantList>

namespace Domain
{
    class SimulationDispatcher
    {
    public:
        explicit SimulationDispatcher();
        ~SimulationDispatcher();

    private:
        void BuildAdjMap();
        void StartSimulation();

        void SetTrainList(const QVariantList &list);

        int TotalRunningTrains;
        Train TrainInstance;
        list<Station*> StationsList;

    };
}

#endif //SIMULATION_DISPATCHER_H
