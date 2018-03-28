#-------------------------------------------------
#
# Project created by QtCreator 2018-03-04T12:43:48
#
#-------------------------------------------------

QT       += core gui multimedia quick
CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MediaPlay
TEMPLATE = app
SUBDIRS += \3DTest2 \
    3DTest2/3DTest2.pro
# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    3DTest2/main.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
        mainwindow.h \
    dialog.h \
    mainwindow.h

FORMS += \
        mainwindow.ui

DISTFILES += \
    3DModel.qml \
    3DTest2/3DStudiofile/models/vehicle/meshes/Vehicle.mesh \
    3DTest2/3DStudiofile/models/wheel/meshes/wheel.mesh \
    3DTest2/main.qmlc \
    3DTest2/3DStudiofile/models/vehicle/vehicle.import \
    3DTest2/3DStudiofile/models/wheel/wheel.import \
    3DTest2/3DStudiofile/3DStudiofile.uia \
    3DTest2/3DStudiofile/3DStudiofile.uip \
    3DTest2/IMG_2642.JPG \
    3DTest2/main.qml

RESOURCES += \
    icons.qrc \
    3dmodel.qrc \
    3DTest2/qml.qrc
