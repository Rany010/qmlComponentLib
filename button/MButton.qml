import QtQuick 2.0
import QtQuick.Controls 2.5

Button{
    id: button

    property int btnWidth: 140
    property int btnHeight: 34
    property int btnRadius: 8

    property bool selected:false

    property alias tipText: toolTip.text
    property alias tipItem: toolTip
    property alias tipVisible: toolTip.visible
    property alias tipDelay: toolTip.delay
    property alias tipTimeout: toolTip.timeout

    //按钮在不同状态下的颜色
    property color normalBgcColor:"#183c92"
    property color hoveredBgcColor:"#2f6fff"
    property color pressedBgcColor:"#2f6fff"
    property color bgcColor:{
        if(button.pressed||selected){
            return pressedBgcColor
        }else if(button.hovered){
            return hoveredBgcColor
        }else{
            return normalBgcColor
        }
    }

    //按钮文本在不同状态下颜色
    property color normalTextColor:"#FFFFFF"
    property color hoveredTextColor:"#FFFFFF"
    property color pressedTextColor:"#FFFFFF"
    property color textColor:{
        if(button.pressed||selected){
            return pressedTextColor
        }else if(button.hovered){
            return hoveredTextColor
        }else{
            return normalTextColor
        }
    }
    //按钮文本属性
    property int textFontSize:17

    width: btnWidth
    height: btnHeight

    background: Rectangle{
        anchors.fill: parent
        color: bgcColor
        radius: btnRadius
    }

    contentItem: Text {
        text: button.text
        color: textColor
        font.pixelSize: textFontSize
        verticalAlignment: Text.AlignVCenter
        font.family: "微软雅黑"
        horizontalAlignment: Text.AlignHCenter
    }

    ToolTip{
        id: toolTip
        font.family: "微软雅黑"
        visible: button.hovered && String(text).length
    }

}
