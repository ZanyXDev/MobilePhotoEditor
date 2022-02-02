import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12 as QQC2
import Qt.labs.settings 1.0


QQC2.ApplicationWindow {
    id: appWnd

    // ----- Property Declarations

    // ----- Signal declaration
    // Do not use empty lines to separate the assignments. Empty lines are reserved
    // for separating type declarations.
    title: "Mobile Photo Editor"
    visible: true
    visibility: isMobile ? Window.FullScreen : Window.Windowed

    width: 320
    height: 480




    // ----- Visual children.
    Rectangle {
        id: background
        z: -1
        color: "black"
        anchors.fill: parent

    }
    // ----- Nonvisual children.

    Component.onCompleted: {
        console.log("Screen.desktopAvailableHeight:" + Screen.desktopAvailableHeight)
        console.log("Screen.desktopAvailableWidth:" + Screen.desktopAvailableWidth)
        console.log("Size HxW [" + appWnd.height + "," + appWnd.width + "]")
        console.log("Screen.pixelDensity:" + Screen.pixelDensity)
    }
}
