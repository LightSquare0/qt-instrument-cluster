#include <iostream>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QFont>
#include <QFile>
#include <QFontDatabase>

// int main(int argc, char ** argv)
// {
//     QCoreApplication app(argc, argv);

//     QQmlEngine engine;
//     QQmlComponent component(&engine, QUrl("qrc:main.qml"));

//     return EXIT_SUCCESS;
// }
int main(int argc, char *argv[])
{
  QGuiApplication app(argc, argv);

  // QFont font("resources/fonts/LexendDeca.ttf");
  // // int n = QFontDatabase::addApplicationFont(QString("resources/fonts/LexendDeca.ttf"));
  // // qDebug() << QFontDatabase::applicationFontFamilies(n);
  // app.setFont(font);

  QFontDatabase::addApplicationFont("resources/fonts/LexendDeca.ttf");

  QFont font("Lexend Deca");
  QGuiApplication::setFont(font);

  qDebug() << font;

  QFile file("resources/fonts/LexendDeca.ttf");
  qDebug() << file.exists();

  QQmlApplicationEngine engine;
  engine.load("resources/qml/main.qml");

  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec();
}