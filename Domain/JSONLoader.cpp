//#########################################################################################
// JSONLoader: Load/Store Data in JSON file/format
//#########################################################################################

#include "JSONLoader.h"
#include "CommonHeader.h"
#include <QFile>
#include <QJsonArray>
#include <QJsonDocument>

using namespace Domain;

JSONLoader::JSONLoader()
{
}

JSONLoader::~JSONLoader()
{
}

bool JSONLoader::loadFile(QJsonObject &obj, const QString &path)
{
    QFile loadFile(path);

    if (!loadFile.open(QIODevice::ReadOnly))
        return false;

    QByteArray data = loadFile.readAll();
    QJsonDocument loadDoc( QJsonDocument::fromJson(data) );
    obj = loadDoc.object();
    loadFile.close();

    return true;
}

bool JSONLoader::saveFile(const QJsonObject &obj, const QString &path)
{
    QFile saveFile(path);

    if (!saveFile.open(QIODevice::WriteOnly))
        return false;

    QJsonDocument saveDoc(obj);
    saveFile.write(saveDoc.toJson());
    saveFile.close();

    return true;
}
