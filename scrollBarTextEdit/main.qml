import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640/2
    height: 480
    title: qsTr("Rany010")

    Rectangle {
          id: frame
          clip: true
          width: parent.width
          height: parent.height
          border.color: "red"
          anchors.centerIn: parent
          anchors.top: parent.bottom
          anchors.left: parent.left
          focus: true

          TextEdit {
              id: textEdit
              text: "ABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKL"
              font.pointSize: 14
              height: contentHeight
              width: frame.width - bar.width
              y: -bar.position * textEdit.height
              wrapMode: TextEdit.Wrap
              selectByKeyboard: true
              selectByMouse: true

              MouseArea{
                  enabled: true
                  anchors.fill: parent
                  onWheel: {
                      if (wheel.angleDelta.y > 0) {
                          bar.decrease();
                      }
                      else {
                          bar.increase();
                      }
                  }
              }
          }

          ScrollBar {
              id: bar
              hoverEnabled: true
              active: hovered || pressed
              orientation: Qt.Vertical
              size: frame.height / textEdit.height
              width: 10
              anchors.top: parent.top
              anchors.right: parent.right
              anchors.bottom: parent.bottom
          }
      }
}
