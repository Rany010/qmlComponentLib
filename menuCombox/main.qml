import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQml 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    Button{
        id: btn
        width: 100
        height: 50
        background: Rectangle{
            anchors.fill: parent
            color: "#000626"
        }

        contentItem: Text {
            id: btnText
            text: " 航点:  1"
            color: "#FFFFFF"
            verticalAlignment: Text.AlignVCenter
            font.family: "微软雅黑"
        }

        onClicked: menu.open()
    }

    ListModel{
        id: listModel
    }

    Menu{
        id: menu
        y: btn.height
        width: 100
        height: 200

        Instantiator{
            model: listModel
            onObjectAdded: menu.insertItem(index, object)
            onObjectRemoved: menu.removeItem(object)

            //自定义menuItem
            delegate: MenuItem{
                id: menuItem
                text: name
                font.family: "微软雅黑"
                font.pixelSize: 15

                contentItem: Text {
                    leftPadding: menuItem.indicator.width
                    rightPadding: menuItem.arrow.width
                    text: menuItem.text
                    font: menuItem.font
                    opacity: enabled ? 1.0 : 0.3
                    color: menuItem.highlighted ? "red" : "#FFFFFF"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: menuItem.highlighted ? "#2e6fff" : "#000626" }
                    }
                }

                onTriggered: {
                    btnText.text = " 航点:  "+index
                }
            }
        }
    }

    Component.onCompleted: {
        initUI()
    }

    function initUI(){
        for(var i=0;i<20;i++){
            listModel.append({name:" 航点:  "+i})
        }
    }
}
