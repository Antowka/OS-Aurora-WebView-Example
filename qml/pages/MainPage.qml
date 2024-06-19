// SPDX-FileCopyrightText: 2023 Open Mobile Platform LLC <community@omp.ru>
// SPDX-License-Identifier: BSD-3-Clause
import QtQuick 2.6
import Sailfish.Silica 1.0
import Sailfish.WebView 1.0
import Sailfish.WebEngine 1.0

Page {
    objectName: "mainPage"

    WebView {
        id: webView

        property string _initUrl: "https://antowka.ru/"

        objectName: "webView"
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        url: _initUrl

        Component.onCompleted: {
            PermissionManager.instance();
        }
    }
/*
    Item {
        id: pageFooter

        objectName: "pageFooter"
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: Math.max(aboutButton.height, urlField.height) + Theme.paddingMedium * 2

        IconButton {
            id: aboutButton

            objectName: "aboutButton"
            anchors {
                left: parent.left
                leftMargin: Theme.paddingMedium
                verticalCenter: parent.verticalCenter
            }
            icon {
                source: "image://theme/icon-m-about"
                sourceSize {
                    width: Theme.iconSizeMedium
                    height: Theme.iconSizeMedium
                }
            }

            onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
        }

        TextField {
            id: urlField

            objectName: "urlField"
            anchors {
                left: aboutButton.right
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
            inputMethodHints: Qt.ImhNoPredictiveText | Qt.ImhUrlCharactersOnly
            focusOutBehavior: FocusBehavior.ClearPageFocus
            labelVisible: false
            placeholderText: qsTr("URL")
            textLeftPadding: 0
            textLeftMargin: Theme.paddingMedium
            font {
                pixelSize: Theme.fontSizeLarge
                family: Theme.fontFamilyHeading
            }
            EnterKey.iconSource: "image://theme/icon-m-search"

            EnterKey.onClicked: {
                webView.url = text;
                webView.focus = true;
            }
            Component.onCompleted: urlField.text = webView._initUrl
        }
    }
*/
}
