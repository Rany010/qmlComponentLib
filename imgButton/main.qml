import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    ImgButton{
        id: imgButton
        width: 32
        height: 32
        btnImgUrl: "qrc:/img/" + (hovered || pressed ? "airplane_d.png" : "airplane.png")
        tipText: qsTr("airplane")
        z:parent.z+1

        onClicked: {
            console.log("imgButton clicked")
        }
    }
}
