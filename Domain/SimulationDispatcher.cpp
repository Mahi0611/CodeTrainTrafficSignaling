//#########################################################################################
// SimulationDispatcher: I
//#########################################################################################

#include "SimulationDispatcher.h"

#include <iostream>
#include <queue>

using namespace Domain;
using namespace std;
SimulationDispatcher::SimulationDispatcher()
    : TotalRunningTrains(0)
    , TrainInstance()
    , StationsList()
{
    BuildAdjMap();
}

SimulationDispatcher::~SimulationDispatcher()
{

}

void SimulationDispatcher::BuildAdjMap()
{
}

void SimulationDispatcher::StartSimulation()
{
      // GetAvailableRoute
       vector<vector<string>> routes;
       vector<string> route = {"Acton", "GeorgeTown", "Brampton", "Etobocoke"};
       routes.push_back(route);

       //Add Active Stations to the list
       for (string name : route)
       {
           //delete them properly
           Station* instance = new Station(name);
           StationsList.push_back(instance);
       }

      //Create AdjecencyListRepresenation from Available route list

       map<string, vector<StationDistance>> Adj;
       vector<StationDistance> x;
       Adj.insert(make_pair("Acton",x));
       Adj.insert(make_pair("GeorgeTown",x));
       Adj.insert(make_pair("Brampton",x));
       Adj.insert(make_pair("Etobicoke",x));

       for (int j = 0; j < routes.size(); j++)
       {
           vector<string> route = routes[j];
           for (int i = 1; i < route.size(); i++)
           {
               string key = route[i];
                if(Adj.find(key) != Adj.end())
                {
                    StationDistance var;
                    var.StationName = route[i];
                    var.Distance = 50;
                    Adj[route[i-1]].push_back(var);

                    var.StationName = route[i-1];
                    var.Distance = 50;
                    Adj[route[i]].push_back(var);
                }
           }
       }

       // GetTrainList and using above route list build trainRoute
       // GetTrainRoute
        queue<StationDistance> trainRoute;
        StationDistance temp;
        temp.StationName = "Acton";
        temp.Distance = 50;
        trainRoute.push(temp);
        temp.StationName = "GeorgeTown";
        temp.Distance = 50;
        trainRoute.push(temp);
        temp.StationName = "Brampton";
        temp.Distance = 50;
        trainRoute.push(temp);
        temp.StationName = "Etobicoke";
        temp.Distance = 50;
        trainRoute.push(temp);

        TotalRunningTrains++;
        int trainNumber = TotalRunningTrains;

        //Add train Information
        TrainInstance.AddTrainInformation(trainNumber, trainRoute);

        //Start Train
        string stop = TrainInstance.StartTrainJourney();

        //Notify Station
        for (auto station : StationsList)
        {
            if(station->GetStationName() == stop)
            {
                Platform plnum = PlatformNotAssigned;
                int waittime = station->NotifyNewTrainComing(trainNumber, plnum);
                TrainInstance.AddWaitTime(waittime, plnum);
                break;
            }
        }
}

void SimulationDispatcher::SetTrainList(const QVariantList &list)
{

}
