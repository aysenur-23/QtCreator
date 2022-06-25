import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: openMenuButton
        text: 'Popup Menu'

        onClicked: {
           menu.open();
        }
    }

    Label{
        id: label
        anchors.centerIn: parent
        text: 'select an option from the menu'
        font.pointSize: 20
    }

    Menu{
        id: menu
        y: openMenuButton.height

        MenuItem{
            text: 'Option 1'
            onClicked: {
                label.text = 'Option 1'
            }
         }

        MenuItem{
            text: 'Option 2'
            onClicked: {
                label.text = 'Option 2'
           }
        }

         MenuItem{
             text: 'Option 3'
             onClicked: {
                 label.text = 'Option 3'
             }
        }
         MenuItem{
             text: 'Leave'

             onClicked: {
                 Qt.quit();
             }
         }
    }
}
