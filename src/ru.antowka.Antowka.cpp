// SPDX-FileCopyrightText: 2023 Open Mobile Platform LLC <community@omp.ru>
// SPDX-License-Identifier: BSD-3-Clause
#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <auroraapp.h>

int main(int argc, char *argv[])
{
    auto applicationObject = Aurora::Application::application(argc, argv);
    applicationObject->setOrganizationName("ru.antowka");
    applicationObject->setApplicationName("Antowka");

    auto view = Aurora::Application::createView();
    view->setSource(Aurora::Application::pathToMainQml());
    view->show();

    return applicationObject->exec();
}
