import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: buttonsRow
      //id: buttonsColumn //butonları alt alta getirir
        anchors.centerIn: parent //butonları merkeze alır
        spacing: 2
        Button{
            id: button1
            text: 'Buton1'

            onClicked: { //butona tıklandığında
                mainWindow.title = 'Başlık'
            }
        }
        Button {
            id: button2
            text: 'Buton2' //buton ismi

            onClicked: {
                mainWindow.title = 'Başlık2'
            }
        }
        Button {
            id: button3
            text: 'Buton3' //buton ismi

            onClicked: {
                mainWindow.title = 'Başlık3'
            }
        }
        Button {
            id: exitButton
            text: 'Kapat' //buton ismi

            onClicked: {
                Qt.quit();
            }
        }
    }
}
