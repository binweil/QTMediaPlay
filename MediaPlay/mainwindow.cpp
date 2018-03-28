#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtQuick/QQuickView>
#include <QQmlApplicationEngine>

int MainWindowcount;
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    printf("MainWindowcount is %d\n",MainWindowcount);
    MainWindowcount++;
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_actionPlay_triggered()
{

}

void MainWindow::on_actionPause_triggered()
{

}

void MainWindow::on_actionStop_triggered()
{

}

void MainWindow::on_actionForward_triggered()
{

}

void MainWindow::on_actionBackup_triggered()
{

}

void MainWindow::on_pushButton_clicked()
{

}

