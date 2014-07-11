#include <QApplication>
#include <QQmlApplicationEngine>
#include <QString>

QString InstallDirectory = "../sean-connery/";

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(InstallDirectory +  "qml/main.qml"));

    return app.exec();
}
