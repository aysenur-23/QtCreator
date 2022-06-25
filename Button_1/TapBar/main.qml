import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: 'TAbBar Example'

    footer: TabBar{
        id: bar

        TabButton {
            text: 'first'
        }
        TabButton {
            text: 'second'
        }
        TabButton {
            text: 'third'
        }
    }

    StackLayout{
        anchors.fill: parent
        currentIndex: bar.currentIndex

        Item{
            id: firstTab

            Rectangle{
                color: 'pink'
                anchors.fill: parent
            }
        }
        Item{
            id: secondTab

            Rectangle{
                color: 'cyan'
                anchors.fill: parent
            }
        }
        Item{
            id: thirdTab

            Rectangle{
                color: 'green'
                anchors.fill: parent


            }
        }
    }

}
