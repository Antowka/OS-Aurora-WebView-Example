# SPDX-FileCopyrightText: 2023 Open Mobile Platform LLC <community@omp.ru>
# SPDX-License-Identifier: BSD-3-Clause

TARGET = ru.antowka.Antowka

CONFIG += \
    c++14 \
    link_pkgconfig \
    auroraapp \
    auroraapp_i18n

TRANSLATIONS += \
    translations/ru.antowka.Antowka.ts \
    translations/ru.antowka.Antowka-ru.ts

SOURCES += \
    src/ru.antowka.Antowka.cpp

DISTFILES += \
    rpm/ru.antowka.Antowka.spec \
    translations/*.ts \
    ru.antowka.Antowka.desktop \
    LICENSE.BSD-3-Clause.md \
    CODE_OF_CONDUCT.md \
    CONTRIBUTING.md \
    AUTHORS.md \
    README.md \
    README.ru.md

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172
