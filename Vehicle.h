#ifndef VEHICLE_H
#define VEHICLE_H

#include <QObject>
#include <QString>
#include <qqml.h>

class Vehicle : public QObject
{
  Q_OBJECT
  Q_PROPERTY(int speed READ speed WRITE setSpeed NOTIFY speedChanged)
  Q_PROPERTY(int rpm READ rpm WRITE setRpm NOTIFY rpmChanged)
  QML_ELEMENT
  QML_VALUE_TYPE(vehicle)

public:
  explicit Vehicle(QObject *parent = nullptr);

  int speed();
  int rpm();
  Q_INVOKABLE void setSpeed(const int &speed);
  Q_INVOKABLE void setRpm(const int &rpm);

signals:
  void speedChanged();
  void rpmChanged();

private:
  int m_speed;
  int m_rpm;
};

#endif // VEHICLE_H