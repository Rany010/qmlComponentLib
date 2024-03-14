import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12


CheckBox {
    id:control

    property color themeColor: "#FFFFFF"
    property color borderColor: "#FFFFFF"
    property int borderWidth: 0
    property int selectWidth: 3  //选中√线条宽度
    property color selectColor: "#FFFFFF"
    property color selectBGC: "red"

    property int btnWidth: 20
    property int btnHeight:20
    property Gradient _normalGradient: Gradient{
        GradientStop { position: 0.0; color: Qt.lighter(themeColor) }
        GradientStop { position: 0.5; color: themeColor }
        GradientStop { position: 1.0; color: Qt.lighter(themeColor) }
    }

    implicitWidth: btnWidth
    implicitHeight: btnHeight

    font{
        family: "微软雅黑"
        pixelSize: 16
    }

    //勾选框
    indicator: Rectangle {
        implicitWidth: implicitWidth
        implicitHeight: width
        anchors.fill: control
        color: checked?selectBGC:themeColor
        border.width: borderWidth
        border.color: borderColor
        antialiasing: false

        Shape {
            id: checked_indicator
            anchors.centerIn: parent
            width: parent.width/2
            height: parent.height/2
            visible: control.checkState === Qt.Checked

            ShapePath {
                strokeWidth: selectWidth
                strokeColor: selectColor
                fillColor: checked?selectBGC:themeColor
                startX: 0
                startY: checked_indicator.height/2
                PathLine { x:checked_indicator.width/2; y:checked_indicator.height }
                PathLine { x:checked_indicator.width; y:0 }
            }
        }
    }

    background: Rectangle{
        radius: 5
        gradient: _normalGradient
    }
}
