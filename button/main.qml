import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    MButton{
        id: btn
        text: qsTr("自定义按钮")
        z: waypointActionPage.z+1

        onClicked: {
            console.log("btn clicked")
        }
    }
}
