//###################################################################################
// Main script Instantiating all applications Domain, GUIBackend, GUI
//###################################################################################

#include "GUIBackend/GUIBackend.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    //Create Instance on GUIBackend
    GetGUIBackendInstance();
    qmlRegisterSingletonType<GUIBackend>("trainTrackSystem.backend", 1, 0, "QMLBackend", GUIBackend_singleton_provider);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
