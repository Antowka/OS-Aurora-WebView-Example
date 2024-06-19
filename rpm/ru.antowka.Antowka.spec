Name:       ru.antowka.Antowka
Summary:    Antowka
Version:    0.1
Release:    1
Group:      Qt/Qt
License:    BSD-3-Clause
URL:        https://community.omprussia.ru/open-source
Source0:    %{name}-%{version}.tar.bz2
Requires:   sailfishsilica-qt5 >= 0.10.9
Requires:   sailfish-components-webview-qt5
Requires:   sailfish-components-webview-qt5-pickers
Requires:   sailfish-components-webview-qt5-popups
BuildRequires: pkgconfig(auroraapp)
BuildRequires: pkgconfig(Qt5Core)
BuildRequires: pkgconfig(Qt5Qml)
BuildRequires: pkgconfig(Qt5Quick)
BuildRequires: pkgconfig(Qt5Network)
BuildRequires: sailfish-components-webview-qt5

%description
Прилодение Antowka.RU WebView-Aurora

%prep
%autosetup

%build
%qmake5
%make_build

%install
%make_install

%files
%defattr(-,root,root,-)
%{_bindir}/%{name}
%defattr(644,root,root,-)
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png
