import QtQuick 2.6
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("ToolBar Example")

    header: ToolBar{
        RowLayout {
            anchors.fill: parent

            ToolButton{
                text: ':'

                onClicked: {
                    menu.open();
                }
            }
            Label{
                id: titulo
                text: 'ToolBar Application Example'
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment:  Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton{
                text: '<'

                onClicked: {
                    stack.pop();
                }
            }

        }
    }
    StackView{
        id: stack
        anchors.fill: parent
    }
    Menu{
        id: menu

        MenuItem{
            text: 'Option 1'

            onClicked: {
                titulo.text = 'Option 1'
                stack.push(firstElement);
            }
        }
        MenuItem{
            text:  'Option 2'
            onClicked: {
                titulo.text = 'Option 2'
                stack.push(secondElement);
            }
            }
        MenuItem{
            text: 'Option 3'
            onClicked: {
                titulo.text = 'Option 3'
                stack.push(thirdElement);
            }
    }

}

    Component{
        id: firstElement
        Rectangle{
            anchors.fill: parent
            color: 'red'
        }
    }
    Component{
        id: secondElement

        Rectangle{
            anchors.fill: parent
            color: 'blue'
        }
    }
    Component{
        id: thirdElement

        Rectangle{
            anchors.fill: parent
            color: 'yellow'
        }
    }
}
