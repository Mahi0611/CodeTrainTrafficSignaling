//#########################################################################################
// DomainEntryPoint: Initiate Logic/Algorithm layer and Database Communication
//#########################################################################################

#ifndef DOMAIN_ENTRY_POINT
#define DOMAIN_ENTRY_POINT

#include "JSONLoader.h"
#include "CommonHeader.h"
#include "SimulationDispatcher.h"
#include <QVariantList>

namespace Domain
{
    class DomainEntryPoint
    {
    public:
        explicit DomainEntryPoint();
        ~DomainEntryPoint();

        bool GetStartSimulation() const;
        void SetStartSimulation(const bool &val);

        int GetMaxTrackCount() const;
        void SetMaxTrackCount(const int &val);

        int GetCurruntTrackCount() const;
        void SetCurruntTrackCount(const int &val);

        int GetMaxTrainCount() const;
        void SetMaxTrainCount(const int &val);

        int GetCurruntTrainCount() const;
        void SetCurruntTrainCount(const int &val);

        QVariantList GetStationList() const;
        void SetStationList(const QVariantList &list);

        QVariantList GetRouteList() const;
        void SetRouteList(const QVariantList &list);

        QVariantList GetTrainList() const;
        void SetTrainList(const QVariantList &list);

        QVariantList GetLocationList() const;
        void SetLocationList(const QVariantList &list);

        QVariantMap GetListAdjecencyforLocation() const;
        void SetListAdjecencyforLocation(const QVariantMap &val);

    private:
        JSONLoader* JSONLoaderInstance;
        SimulationDispatcher* SimulationDispatcherInstance;
        map<string, vector<StationDistance> > AdjStationMap;
        int TrainCount;
    };
}

#endif //DOMAIN_ENTRY_POINT
