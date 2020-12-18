//#########################################################################################
// SimulationDispatcher:
//#########################################################################################

#ifndef SIMULATION_DISPATCHER_H
#define SIMULATION_DISPATCHER_H

#include "CommonHeader.h"
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
    };
}

#endif //SIMULATION_DISPATCHER_H
