#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <windows.h>
#include <tchar.h>
#include <iostream>
//#include "ASCM.h"
#include "Rotator.h"

using namespace std;

void initPhysics()
{
    TCHAR szName[] = TEXT("Local\\acpmf_physics");
    m_physics.hMapFile = CreateFileMapping(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, sizeof(SPageFilePhysics), szName);
    if (!m_physics.hMapFile)
    {
//        MessageBoxA(GetActiveWindow(), "CreateFileMapping failed", "ACS", MB_OK);
    }
    m_physics.mapFileBuffer = (unsigned char*)MapViewOfFile(m_physics.hMapFile, FILE_MAP_READ, 0, 0, sizeof(SPageFilePhysics));
    if (!m_physics.mapFileBuffer)
    {
//        MessageBoxA(GetActiveWindow(), "MapViewOfFile failed", "ACS", MB_OK);
    }
}

int main(int argc, char *argv[])
{
    initPhysics();

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Rotator _rotator;
    engine.addImportPath("qrc:/qml/imports");
    engine.load(QUrl(QStringLiteral("qrc:/qml/Layout.qml")));
    engine.rootContext()->setContextProperty("_rotator", &_rotator);

    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}
