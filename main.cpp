#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    
    QQmlApplicationEngine engine;
    
    engine.loadFromModule("ClimateControl", "Main");
    
    return app.exec();
}