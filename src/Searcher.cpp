# include "Searcher.h"

Searcher::Searcher(QObject *parent) : QObject(parent)
{
    std::fstream TeachersList;
    TeachersList.open("/usr/share/ru.auroraos.MIREA/qml/Teachers.txt", std::ios::in); //в будущем надо будет сделать qml/data/Teachers.txt
    std::string FirstName{}, SecondName{};
    QString qFirstName{}, qSecondName{};
    if (!TeachersList.is_open())
    {
        qDebug() << "File not found\n";


    }
    else
    {
        TeachersList >> FirstName >> SecondName;
        qDebug() << FirstName.c_str() << " " << SecondName.c_str();
//        while (!TeachersList.atEnd())
//        {
//            QByteArray line = TeachersList.readLine();
//            qDebug() << line;
//            qDebug() << "Line Printed";
//            std::string path{"usr/share/bin"};  ///usr/bin/ru.auroraos.MIREA      /usr/share/ru.auroraos.MIREA
//        }

    }
    std::string path{"/srv/shared/ru.auroraos/CppTest/data"};  ///usr/bin/ru.auroraos.MIREA      /usr/share/ru.auroraos.MIREA в дате нихуя нет
    //пока что пихаем все в жопу (/usr/share/ru.auroraos.MIREA/qml/)
    for (const auto & entry : std::filesystem::directory_iterator(path))
        qDebug() << QString::fromStdString(entry.path());

    //take file and create map
    qDebug() << "Constructor called\n";
}

void Searcher::_TestCall()
{
    qDebug() << "TestCall called";
}

void Searcher::_Search()
{

}

Searcher::~Searcher()
{
    qDebug() << "Destructor called";
}
