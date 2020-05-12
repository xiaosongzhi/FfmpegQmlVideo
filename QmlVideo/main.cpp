#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "XVideo.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<XVideo>("XVideo", 1, 0, "XVideo");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
