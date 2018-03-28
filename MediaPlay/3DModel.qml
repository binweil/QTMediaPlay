import QtQuick 2.0
import QtStudio3D 1.0

Item {
    id: item1
    visible: true
    width: 640
    height: 480
    color: transparent

    Studio3D{
        id: studio3D
        anchors.fill: parent

        ViewerSettings {
            scaleMode: ViewerSettings.ScaleModeFill
            showRenderStats: false
        }

        Presentation {
            source: "qrc:/StudioFile/3DStudiofile/3DStudiofile.uip"

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


}
