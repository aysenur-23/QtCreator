import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("GridView")

    Component.onCompleted: {
        var colores = ['orange', 'red', 'green', 'blue', 'cyan', 'brown'];
        var ix;
        for (ix = 0; ix < colores.length ; ++ix){
            gridView.model.append({
                myColor: colores[ix]
                                  })
        }
             }

    //    gridView.model.append({
    //        myColor: 'orange'
    //                         });
    //    gridView.model.append({
    //        myColor: 'red'
    //                        });
    //     gridView.model.append({
    //      myColor: 'blue'
    //                        });



    GridView{
        id: gridView

        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: 20
            topMargin: 20
        }
        cellWidth: width / 3
        cellHeight: height / 3

        model: ListModel{}
        delegate: Rectangle{
            width: gridView.cellWidth
            height: gridView.cellHeight // /3
            color: myColor
        }
    }
}
