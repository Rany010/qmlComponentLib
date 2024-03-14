import QtQuick 2.9
import QtQuick.Controls 2.5

Button {
    id: buttonImg

    property int iWidth
    property int iHeight
    property alias tipText: toolTip.text
    property bool selected: false
    property string btnImgNormal
    property string btnImgHovered
    property string btnImgPressed
    property string btnImgDisbaled

    implicitWidth: iWidth
    implicitHeight: iHeight

    property string btnImgUrl: {
        if (!buttonImg.enabled) {
            return btnImgDisbaled
        } else if (buttonImg.pressed || selected) {
            return btnImgPressed
        } else if (buttonImg.hovered) {
            return btnImgHovered
        } else {
            return btnImgNormal
        }
    }
    background: Item {
        width: buttonImg.width
        height: buttonImg.height
        Image {
            id: backImage
            source: btnImgUrl
            anchors.centerIn: parent
        }
    }

    ToolTip{
        id: toolTip
        visible: buttonImg.hovered && String(text).length
        font.family: "微软雅黑"
        delay: 500
    }
}
