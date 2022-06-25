import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

Button {
    id: exitButton
    text: 'Button'

    anchors {
        verticalCenter: parent.verticalCenter
        horizontalCenter: parent.horizontalCenter
}
    onClicked: {
        Qt.quit();

}
}
}
