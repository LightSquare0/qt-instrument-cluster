#include <iostream>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QFont>
#include <QFile>
#include <QFontDatabase>

int main(int argc, char *argv[])
{
  QGuiApplication app(argc, argv);

  qmlRegisterSingletonType(QUrl("qrc:/resources/qml/Styles/Theme.qml"), "Theme", 1, 0, "Theme");

  if (QFile("resources/fonts/LexendDeca-Light.ttf").exists())
  {
    qDebug() << QFontDatabase::addApplicationFont("resources/fonts/LexendDeca-Light.ttf");
    qDebug() << QFontDatabase::addApplicationFont("resources/fonts/LexendDeca-Regular.ttf");
    QFont LexendLight("Lexend Deca Light");
    QFont LexendRegular("Lexend Deca");
    QGuiApplication::setFont(LexendLight);
    qDebug() << "Font loaded.";
  }
  else
  {
    qDebug() << "Failed to load font.";
  }

  QQmlApplicationEngine engine;
  engine.load("resources/qml/main.qml");

  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec();
}