import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    Rectangle{
        id: rect
        anchors.fill: parent

        MCheckBox{
            checked: false
            themeColor: "green"
            borderColor: "black"
            anchors{
                left: rect.left
                leftMargin: 50
                top: rect.top
                topMargin: 50
            }

            onCheckStateChanged: {
                console.log("checked: ",checked)
            }
        }
    }
}
