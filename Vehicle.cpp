#include "Vehicle.h"

Vehicle::Vehicle(QObject *parent)
    : QObject(parent), m_speed(40), m_rpm(1900)
{
}

int Vehicle::speed()
{
  return m_speed;
}

int Vehicle::rpm()
{
  return m_rpm;
}

void Vehicle::setSpeed(const int &speed)
{
  if (speed == m_speed)
    return;

  m_speed = speed;
  emit speedChanged();
  
  qDebug() << speed;
}

void Vehicle::setRpm(const int &rpm)
{
  if (rpm == m_rpm)
    return;

  m_rpm = rpm;
  emit rpmChanged();

  qDebug() << rpm;
}