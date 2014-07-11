import QtQuick 2.2
import QtQuick.Controls 1.1
import QtMultimedia 5.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Video{
        id: first
        source: "Crap/jimmy.mp4"
        width: parent.width
        height: 320
        autoPlay: true

    }

    Image{
        id: second
        source: "Crap/7837773-Full.jpg"
        width: parent.width
        fillMode: Image.PreserveAspectFit

        MouseArea{
            width: parent.width
            height: parent.height
            onClicked: {animateOpacity.start(); enabled = false;}
        }
    }

    NumberAnimation {
             id: animateOpacity
             target: second
             properties: "opacity"
             from: 1.0
             to: 0.0
             duration: 500
             easing {type: Easing.Linear; }
        }
}
