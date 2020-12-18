//#########################################################################################
// GUIBackend: Send/Recieve messages from UI and Domain
//#########################################################################################

#ifndef GUI_BACKEND_H
#define GUI_BACKEND_H

#include "Domain/DomainEntryPoint.h"
#include <QObject>
#include <QString>
#include <QVariantList>
using namespace Domain;
class GUIBackend: public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool startSimulation                READ GetStartSimulation          WRITE SetStartSimulation          NOTIFY StartSimulationChanged)
    Q_PROPERTY(int maxTrackCount                READ GetMaxTrackCount          WRITE SetMaxTrackCount          NOTIFY MaxTrackCountChanged)
    Q_PROPERTY(int curruntTrackCount            READ GetCurruntTrackCount      WRITE SetCurruntTrackCount      NOTIFY CurruntTrackCountChanged)
    Q_PROPERTY(int maxTrainCount                READ GetMaxTrainCount          WRITE SetMaxTrainCount          NOTIFY MaxTrainCountChanged)
    Q_PROPERTY(int curruntTrainCount            READ GetCurruntTrainCount      WRITE SetCurruntTrainCount      NOTIFY CurruntTrainCountChanged)
    Q_PROPERTY(QVariantList stationList         READ GetStationList            WRITE SetStationList            NOTIFY StationListChanged)
    Q_PROPERTY(QVariantList routeList            READ GetRouteList              WRITE SetRouteList              NOTIFY RouteListChanged)
    Q_PROPERTY(QVariantList trainList            READ GetTrainList              WRITE SetTrainList              NOTIFY TrainListChanged)
    Q_PROPERTY(QVariantList locationList         READ GetLocationList           WRITE SetLocationList           NOTIFY LocationListChanged)
    Q_PROPERTY(QVariantMap listAdjecencyforLocation         READ GetListAdjecencyforLocation        WRITE SetListAdjecencyforLocation           NOTIFY ListAdjecencyforLocationChanged)

    public:
        explicit GUIBackend(QObject* parent = nullptr);
        ~GUIBackend();

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

    signals:
        void StartSimulationChanged(bool status);
        void MaxTrackCountChanged(int val);
        void CurruntTrackCountChanged(int val);
        void MaxTrainCountChanged(int val);
        void CurruntTrainCountChanged(int val);
        void StationListChanged(QVariantList list);
        void ListAdjecencyforLocationChanged(QVariantMap list);
        void RouteListChanged(QVariantList list);
        void TrainListChanged(QVariantList list);
        void LocationListChanged(QVariantList list);

private:
    Domain::DomainEntryPoint* DomainInstance;
};

//Singleton Instance of GUIBackend
class QQmlEngine;
class QJSEngine;
static GUIBackend* GUIBackendInstance;

static QObject* GetGUIBackendInstance()
{
    //Create Instance only if needed
    if(GUIBackendInstance != nullptr)
    {
        return GUIBackendInstance;
    }
    else
    {
        GUIBackendInstance = new GUIBackend();
        return GUIBackendInstance;
    }
}

static QObject* GUIBackend_singleton_provider(QQmlEngine* engine, QJSEngine* scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    return GetGUIBackendInstance();
}
#endif //GUI_BACKEND_H
