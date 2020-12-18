//#########################################################################################
// GUIBackend: Send/Recieve messages from UI and Domain
//#########################################################################################

#include "GUIBackend.h"

using namespace Domain;

GUIBackend::GUIBackend(QObject* parent)
        : QObject(parent)
        , DomainInstance( new DomainEntryPoint())
{
}

GUIBackend::~GUIBackend()
{
    delete DomainInstance;
    DomainInstance = nullptr;
}

bool GUIBackend::GetStartSimulation() const
{
    return false;
}

void GUIBackend::SetStartSimulation(const bool &val)
{
    DomainInstance->SetStartSimulation(val);
}

int GUIBackend::GetMaxTrackCount() const
{
    return DomainInstance->GetMaxTrackCount();
}

void GUIBackend::SetMaxTrackCount(const int &val)
{
    DomainInstance->SetMaxTrackCount(val);
    emit MaxTrackCountChanged(val);
}

int GUIBackend::GetCurruntTrackCount() const
{
    return DomainInstance->GetCurruntTrackCount();
}

void GUIBackend::SetCurruntTrackCount(const int &val)
{
    DomainInstance->SetCurruntTrackCount(val);
    emit CurruntTrackCountChanged(val);
}

int GUIBackend::GetMaxTrainCount() const
{
    return DomainInstance->GetMaxTrainCount();
}

void GUIBackend::SetMaxTrainCount(const int &val)
{
    DomainInstance->SetMaxTrainCount(val);
    emit MaxTrainCountChanged(val);
}

int GUIBackend::GetCurruntTrainCount() const
{
    return DomainInstance->GetCurruntTrainCount();
}

void GUIBackend::SetCurruntTrainCount(const int &val)
{
    DomainInstance->SetCurruntTrainCount(val);
    emit CurruntTrainCountChanged(val);
}

QVariantList GUIBackend::GetStationList() const
{
    return DomainInstance->GetStationList();
}

void GUIBackend::SetStationList(const QVariantList &list)
{
    DomainInstance->SetStationList(list);
    emit StationListChanged(list);
}

QVariantList GUIBackend::GetRouteList() const
{
    return DomainInstance->GetRouteList();
}

void GUIBackend::SetRouteList(const QVariantList &list)
{
    DomainInstance->SetRouteList(list);
    emit RouteListChanged(list);
}

QVariantList GUIBackend::GetLocationList() const
{
    return DomainInstance->GetLocationList();
}

void GUIBackend::SetLocationList(const QVariantList &list)
{
    DomainInstance->SetLocationList(list);
    emit LocationListChanged(list);
}

QVariantList GUIBackend::GetTrainList() const
{
//    return DomainInstance->GetTrainList();
}

void GUIBackend::SetTrainList(const QVariantList &list)
{
    DomainInstance->SetTrainList(list);
    emit TrainListChanged(list);
}

QVariantMap GUIBackend::GetListAdjecencyforLocation() const
{
    return DomainInstance->GetListAdjecencyforLocation();
}

void GUIBackend::SetListAdjecencyforLocation(const QVariantMap &val)
{
    DomainInstance->SetListAdjecencyforLocation(val);
    emit ListAdjecencyforLocationChanged(val);
}
