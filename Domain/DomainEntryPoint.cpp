//#########################################################################################
// DomainEntryPoint: Initiate Logic/Algorithm layer and Database Communication
//#########################################################################################

#include "DomainEntryPoint.h"
#include <iostream>

using namespace Domain;
using namespace std;

DomainEntryPoint::DomainEntryPoint()
    : JSONLoaderInstance(new JSONLoader())
    , SimulationDispatcherInstance(new SimulationDispatcher())
    , TrainCount(0)
{
}

DomainEntryPoint::~DomainEntryPoint()
{
    delete JSONLoaderInstance;
    JSONLoaderInstance = nullptr;

    delete SimulationDispatcherInstance;
    SimulationDispatcherInstance = nullptr;
}

bool DomainEntryPoint::GetStartSimulation() const
{
}

void DomainEntryPoint::SetStartSimulation(const bool &val)
{
//   SimulationDispatcherInstance->StartSimulation();
}

int DomainEntryPoint::GetMaxTrackCount() const
{

}

void DomainEntryPoint::SetMaxTrackCount(const int &val)
{
    cout << "SetMaxTrackCount " << val << endl;
}

int DomainEntryPoint::GetCurruntTrackCount() const
{

}

void DomainEntryPoint::SetCurruntTrackCount(const int &val)
{

}

int DomainEntryPoint::GetMaxTrainCount() const
{
    return TrainCount;
}

void DomainEntryPoint::SetMaxTrainCount(const int &val)
{
    TrainCount = val;
}

int DomainEntryPoint::GetCurruntTrainCount() const
{

}

void DomainEntryPoint::SetCurruntTrainCount(const int &val)
{

}

QVariantList DomainEntryPoint::GetStationList() const
{

}

void DomainEntryPoint::SetStationList(const QVariantList &list)
{
    cout << "SetStationList " << list.length() << endl;
}

QVariantList DomainEntryPoint::GetRouteList() const
{

}

void DomainEntryPoint::SetRouteList(const QVariantList &list)
{
    cout << "SetRouteList " << list.size() << endl;
}

QVariantList DomainEntryPoint::GetLocationList() const
{

}

void DomainEntryPoint::SetLocationList(const QVariantList &list)
{

}

QVariantList DomainEntryPoint::GetTrainList() const
{

}

void DomainEntryPoint::SetTrainList(const QVariantList &list)
{
    cout << "SetTrainList " << list.size() << endl;
}

QVariantMap DomainEntryPoint::GetListAdjecencyforLocation() const
{

}

void DomainEntryPoint::SetListAdjecencyforLocation(const QVariantMap &val)
{
    cout << "SetListAdjecencyforLocation " << val.size() << endl;
}

