#ifndef SEARCHER_H
#define SEARCHER_H

# include <QObject>
# include <QDebug>
# include <QString>
# include <QFile>

# include <fstream>
# include <string>
# include <filesystem>
# include <iostream>
# include <auroraapp.h>


class Searcher : public QObject
{
private:
    Q_OBJECT
    std::ifstream TeachersList;
public:
    explicit Searcher(QObject *parent = nullptr);
    ~Searcher();

signals:

public slots:
    void _TestCall();
    void _Search();

};

#endif // SEARCHER_H
