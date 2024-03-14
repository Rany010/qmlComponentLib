import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    Button{
        width: 150
        height: 40
        text: "open file dialog"
        onClicked: {
            fileDialog.open()
        }
    }

    FileDialog{
        id: fileDialog
        title: qsTr("select file");
        onAccepted: {
            console.log("fileDialog.file: ",fileDialog.fileUrls)
        }
    }
}
