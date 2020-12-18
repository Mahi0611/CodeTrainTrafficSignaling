//#########################################################################################
// CommonHeader: Data Structrure Formats and Constants
//#########################################################################################

#ifndef COMMON_HEARER_H
#define COMMON_HEARER_H

#include <QString>
#include <vector>
#include <map>
#include <string>
using namespace std;

namespace Domain
{
    const QString MapFile = "Map.json";

    //LocationListAdjecencyRepresenation
    struct StationDistance
    {
        string StationName;
        int Distance;
    };
}

#endif //COMMON_HEARER_H
