import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView")
    Component.onCompleted: {
        for (var ix = 0; ix<10; ix++){
            myListView.model.append({valorTexto: 'Hello' + ix});
        }
    }
    ListView{
        anchors.fill: parent
        id: myListView
        model: ListModel {}
        spacing: 5
        delegate: Rectangle { //if you wanna use text, rectangle to text
            color: 'green'
            border.color: 'white'
            border.width: 5
            width: mainWindow.width
            height: mainWindow.height/5
            Text {
                text: valorTexto
                    }
                }

            }
       }

