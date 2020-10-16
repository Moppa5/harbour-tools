#ifndef DBUSCONN_H
#define DBUSCONN_H

#include <QObject>

class DBusConn : public QObject
{
    Q_OBJECT
public:
    explicit DBusConn(QObject *parent = nullptr);

signals:

public slots:

private:

};

#endif // DBUSCONN_H
