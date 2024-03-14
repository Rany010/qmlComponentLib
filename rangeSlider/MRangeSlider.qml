import QtQuick 2.7
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

RangeSlider {
      id: control

      //滑动条
      property int sliderWidth: 200
      property int sliderHeight: 8
      property color sliderColorBefor: "#1d63ff"
      property color sliderColorAfter: "#333851"
      property int sliderRadius: sliderHeight/2

      //滑块
      property color handleColor: "#1d63ff"
      property int handlerSize: 16

      property int firstValue:from
      property int secondValue: to

      first.value: firstValue
      second.value: secondValue
      stepSize: 1

      background: Rectangle {
          x: control.leftPadding
          y: control.topPadding + control.availableHeight / 2 - height / 2
          implicitWidth: sliderWidth
          implicitHeight: sliderHeight
          width: control.availableWidth
          height: sliderHeight
          radius: height / 2
          color: sliderColorAfter
          Rectangle {
              x: control.first.visualPosition * parent.width
              width: control.second.visualPosition * parent.width - x
              height: parent.height
              color: sliderColorBefor
              radius: sliderRadius
          }
      }

      first.handle: Rectangle {
          x: control.leftPadding + control.first.visualPosition * (control.availableWidth - width)
          y: control.topPadding + control.availableHeight / 2 - height / 2
          implicitWidth: handlerSize
          implicitHeight: handlerSize
          radius: handlerSize/2
          color: handleColor
      }

      second.handle: Rectangle {
          x: control.leftPadding + control.second.visualPosition * (control.availableWidth - width)
          y: control.topPadding + control.availableHeight / 2 - height / 2
          implicitWidth: control.handlerSize
          implicitHeight: control.handlerSize
          radius: handlerSize/2
          color: handleColor
      }
}
