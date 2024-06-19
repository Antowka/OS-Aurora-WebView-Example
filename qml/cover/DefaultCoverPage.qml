// SPDX-FileCopyrightText: 2023 Open Mobile Platform LLC <community@omp.ru>
// SPDX-License-Identifier: BSD-3-Clause
import QtQuick 2.6
import Sailfish.Silica 1.0

CoverBackground {
    objectName: "coverBackground"

    CoverPlaceholder {
        objectName: "coverPlaceholder"
        text: appWindow.appName
        forceFit: true
        icon.source: Qt.resolvedUrl("../images/ru.auroraos.TinyBrowser.svg")
    }
}
