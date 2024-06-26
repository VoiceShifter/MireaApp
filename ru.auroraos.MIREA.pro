TARGET = ru.auroraos.MIREA

CONFIG += \
    auroraapp

PKGCONFIG +=
    auroraapp \

SOURCES += \
    src/Searcher.cpp \
    src/main.cpp \

HEADERS += \
    src/Searcher.h

DISTFILES += \
    D:/tor/метода/icons8-home-windows/icons8-home-64.svg \
    qml/pages/LoaderPage.qml \
    qml/pages/MainPage2.qml \
    qml/pages/MainPage4.qml \
    qml/pages/MainPage5.qml \
    qml/pages/MyDir/AttendanceLine.qml \
    qml/pages/MyDir/Colors.qml \
    qml/pages/MyDir/MenuButton.qml \
    qml/pages/MyDir/MenuItem.qml \
    qml/pages/MyDir/MyDrawer.qml \
    qml/pages/MyDir/StudentsList.qml \
    qml/pages/RedRectangle.qml \
    qml/pages/Subject.qml \
    qml/pages/Teachers.qml \
    qml/pages/Teachers.txt \
    qml/pages/test.qml \
    rpm/ru.auroraos.MIREA.spec \
    qml/pages/MyDir/Subject.qml \
    src/Teachers.txt \
    src/data/Teachers.txt \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.auroraos.MIREA.ts \
    translations/ru.auroraos.MIREA-ru.ts \

RESOURCES +=
    src/Teachers.txt \
