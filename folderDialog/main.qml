import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import Qt.labs.platform 1.0

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    Rectangle {
        id: inputBox
        width: 350
        height: 40
        color: "#F3F6FA"
        clip: true
        border.width: 1
        border.color: "#DFE0E4"
        radius: 5

        TextInput {
            text:folderDialog.folder
            color: "#707070"
            font.pixelSize: 16
            activeFocusOnTab: true
            selectByMouse: true
            selectedTextColor: "white"
            selectionColor: "#4A6DBC"
            verticalAlignment: TextInput.AlignVCenter
            horizontalAlignment: TextInput.AlignLeft
            anchors.fill: parent
            leftPadding: 3
            rightPadding: 3

            }
        }

        Button{
            text: qsTr("选择路径")
            height: 40
            width: 120
            anchors{
                verticalCenter: inputBox.verticalCenter
                left: inputBox.right
                leftMargin: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    folderDialog.open()
                }
            }
        }

    FolderDialog {
        id: folderDialog
        //folder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0] //默认打开Pictures文件夹
        folder: StandardPaths.standardLocations(StandardPaths.DownloadLocation)[0] //默认打开Download文件夹
    }
}
