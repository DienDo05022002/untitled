import QtQuick 2.7
import QtQuick.Controls 1.5
//import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("Menu")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Row {
        id: row1
        x: 65
        y: 40
        width: 511
        height: 62
    }

    Button {
        id: button1
        x: 70
        y: 60
        width: 148
        height: 23
        text: qsTr("Home Logo")
    }

    Button {
        id: button2
        x: 402
        y: 60
        width: 161
        height: 23
        text: qsTr("Qt Logo")
    }

    Image {
        id: imageId
        x: 192
        y: 130
        width: 257
        height: 221
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Connections {
        target: button1
        onClicked: imageId.source = "qrc:/images/imgs/home.jpeg"
    }
    Connections {
        target: button2
        onClicked: imageId.source = "qrc:/images/imgs/Qt_logo.svg.png"
    }
}
