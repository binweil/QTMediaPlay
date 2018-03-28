import QtQuick 2.9
import QtStudio3D 1.0
import QtQuick.Controls 2.3

Item{
    id: item1
    visible: true
    width: 640
    height: 480
   // title: qsTr("Hello World")


    Studio3D{
        id: studio3D
        anchors.fill: parent

        ViewerSettings {
            scaleMode: ViewerSettings.ScaleModeFill
            showRenderStats: false
        }

        Presentation {
            source: "qrc:/3DStudiofile/3DStudiofile.uip"

            SceneElement {
                id: scene
                elementPath: "Scene"
            }

            Element {
                id: materialElement
                elementPath: "Scene.Layer.Vehicle.Default"
            }

            property int desiredSlideIndex: 1
            property int colorIndex: 0
            property var colorArray: [
                [1.0, 1.0, 1.0],
                [1.0, 0.0, 0.0],
                [0.0, 1.0, 0.0],
                [0.0, 0.0, 1.0],
                [0.0, 1.0, 1.0],
                [1.0, 0.0, 1.0],
                [1.0, 1.0, 0.0]
            ]
            function nextSlide() {
                desiredSlideIndex = desiredSlideIndex != 4 ? desiredSlideIndex + 1 : 1;
                scene.currentSlideIndex = desiredSlideIndex
            }




        }
    }

    Dial {
        id: dial
        x: 67
        y: 356
        width: 100
        height: 76
        to: 1
        value:0.0
        onValueChanged: materialElement.setAttribute("diffuse.r", dial.value)

        Text {
            id: text2
            x: 10
            y: 24
            width: 81
            height: 28
            text: dial.value.toPrecision(3)
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }
    }

    Dial {
        id: dial1
        x: 270
        y: 356
        width: 100
        height: 76
        value: 0
        to: 1
        onValueChanged: materialElement.setAttribute("diffuse.g",dial1.value)
        Text {
            id: text3
            x: 10
            y: 24
            width: 81
            height: 28
            text: dial1.value.toPrecision(3)
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Dial {
        id: dial2
        x: 488
        y: 356
        width: 100
        height: 76
        value: 0
        to: 1
        onValueChanged: materialElement.setAttribute("diffuse.b", dial2.value)
        Text {
            id: text4
            x: 10
            y: 24
            width: 81
            height: 28
            text: dial2.value.toPrecision(3)
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Image {
        id: image
        x: 8
        y: 55
        width: 100
        height: 100
        source: "qrc:/IMG_2642.JPG"
    }
    property int desiredSlideIndex: 1
    property int dialIndex: 1
    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 460
        height: 40
        font.bold: false

        ToolButton {
            id: toolButton
            x: 0
            y: 0
            width: 100
            height: 40
            text: qsTr("Next Wheel")
            checkable: true
            highlighted: false
            onClicked: {
                desiredSlideIndex = desiredSlideIndex != 4 ? desiredSlideIndex + 1 : 1;
                scene.currentSlideIndex = desiredSlideIndex
                if(desiredSlideIndex==1){
                    dial.visible=1;
                    dial1.visible=1;
                    dial2.visible=1;
                }else{
                    dial.visible=0;
                    dial1.visible=0;
                    dial2.visible=0;
                }

            }
        }

        ToolButton {
            id: toolButton1
            x: 116
            y: 0
            width: 100
            text: qsTr("Reset Color")
            highlighted: false
            checkable: true
            onClicked: {
                materialElement.setAttribute("diffuse.r", 0)
                materialElement.setAttribute("diffuse.g", 0)
                materialElement.setAttribute("diffuse.b", 0)
                dial.value=0
                dial1.value=0
                dial2.value=0
            }
        }
    }






}
