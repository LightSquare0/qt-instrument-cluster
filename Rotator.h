#pragma once
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include <QTimer>
#include <QDebug>
#include "ASCM.h"

inline float lerp(float a, float b, float f)
{
    return a + f * (b - a);
}

class Rotator : public QObject {
    Q_OBJECT
    Q_PROPERTY(float rotation READ rotation WRITE setRotation NOTIFY rotationChanged)

public:
    QTimer *timer;

    Rotator() {
         timer = new QTimer(this);
             connect(timer, &QTimer::timeout, this, &Rotator::handleTimer);
             timer->start(200);
    }

    void handleTimer(){
//        setRotation(m_rotation + 250.0);
        SPageFilePhysics* pf = (SPageFilePhysics*)m_physics.mapFileBuffer;
        qDebug() << "timer update" << pf->rpms;
        qDebug() << (float)pf->rpms / 7500.0f;
        setRotation(lerp(10.0f, 130.0f, (float)pf->rpms / 7500.0f));
    }

    void setRotation(const float &value){
        if (value != m_rotation){
            m_rotation = value;
            emit rotationChanged();
        }
    }

    float rotation() const {
        return m_rotation;
    }

     ~Rotator() {
        delete timer;
    };

signals:
    void rotationChanged();

private:
    float m_rotation = 0.0;
};
