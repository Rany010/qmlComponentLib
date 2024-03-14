import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rany010")

    Image {
        id: img1
        source: "./airplane.png"
        transform: Rotation {
            origin.x: 30;
            origin.y: 30;
            axis {
                x: 0;
                y: 0;
                z: 1
            }
            angle: 0
        }
    }

    Image {
        id: img2
        source: "./airplane.png"
        transform: Rotation {
            origin.x: 30;
            origin.y: 30;
            axis {
                x: 0;
                y: 0;
                z: 1
            }
            angle: 45
        }

        anchors{
            left: img1.right
            leftMargin: 30
        }
    }

    Image {
        id: img3
        source: "./airplane.png"
        transform: Rotation {
            origin.x: 30;
            origin.y: 30;
            axis {
                x: 0;
                y: 0;
                z: 1
            }
            angle: 90
        }

        anchors{
            left: img2.right
            leftMargin: 30
        }
    }
}
