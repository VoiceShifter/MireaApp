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
# include <unordered_set>
# include <QStringList>
# include <auroraapp.h>


class Searcher : public QObject
{
private:
    Q_OBJECT
    Q_PROPERTY(QStringList _Items READ _GetItems WRITE _PopulateItems NOTIFY listPopulated) /*WRITE _SetItems
               NOTIFY _ItemsChanged*/
    QStringList _Items;
    std::fstream TeachersList;
    std::fstream CacheFile;
    std::unordered_set<std::string> Results;

    bool EndBit{ 1 };

    Q_PROPERTY(QString Cache READ Cache CONSTANT)

    QString _Cache;



public:
    QStringList _GetItems();
    void _PopulateItems(QStringList&);
    Q_INVOKABLE void _PrintItems();
    Q_INVOKABLE void _Search(QString Input);




    explicit Searcher(QObject *parent = nullptr);
    ~Searcher();
    std::unordered_set<std::string> Iterate(std::unordered_set<std::string>& aSet, std::string& Input, size_t Character);


    const QString &Cache() const;

signals:


    void listPopulated();
    void constructed();

public slots:

};


#endif // SEARCHER_H
