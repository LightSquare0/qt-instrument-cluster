#include <iostream>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QQmlContext>
#include <QFont>
#include <QFile>
#include <QFontDatabase>
#include "Vehicle.h"

int main(int argc, char *argv[])
{
  QGuiApplication app(argc, argv);

  qmlRegisterSingletonType(QUrl("qrc:/resources/qml/Styles/Theme.qml"), "Theme", 1, 0, "Theme");

  if (QFontDatabase::addApplicationFont(":/resources/fonts/LexendDeca-Light.ttf") != -1 && QFontDatabase::addApplicationFont(":/resources/fonts/LexendDeca-Regular.ttf") != -1)
  {
    QFont LexendLight("Lexend Deca", 16, QFont::Light);
    QGuiApplication::setFont(LexendLight);
    qDebug() << "Font loaded.";
  }
  else
  {
    qDebug() << "Failed to load font.";
  }

  QQmlApplicationEngine engine;
  Vehicle vehicle;
  engine.rootContext()->setContextProperty("Vehicle", &vehicle);
  engine.load("resources/qml/main.qml");

  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec();
}