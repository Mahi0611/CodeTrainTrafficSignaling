//#########################################################################################
// JSONLoader: Load/Store Data in JSON file/format
//#########################################################################################

#ifndef JSON_LOADER_H
#define JSON_LOADER_H

#include <QString>
#include <QJsonObject>

namespace Domain
{
    class JSONLoader
    {
    public:
        explicit JSONLoader();
        ~JSONLoader();

    private:
        bool loadFile(QJsonObject &obj, const QString &path);
        bool saveFile(const QJsonObject &obj, const QString &path);
    };
}

#endif //JSON_LOADER_H
