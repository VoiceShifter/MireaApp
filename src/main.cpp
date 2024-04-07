
# include <QtQuick>
# include "Searcher.h"
# include <QQmlContext>
# include <QQuickView>


int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("ru.auroraos"));
    application->setApplicationName(QStringLiteral("MIREA"));


    //Searcher TestClass;
    qmlRegisterType <Searcher> ("Searcher", 1, 0, "Searcher");

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/MIREA.qml")));
    view->show();
    qDebug() << Aurora::Application::pathTo(QStringLiteral("/"));
    //QQmlContext * rootContext{view->rootContext()};
    //rootContext->setContextProperty("_TestClass", &TestClass);
    return application->exec();


}
