import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "panel.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("Panel")

        Panel {
            id: panel
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(8)

            Rectangle {
                color: Theme.palette.normal.overlay
                anchors.fill: parent
                Row {
                    anchors.centerIn: parent
                    spacing: units.gu(2)

                    Repeater {
                        model: ["red", "blue", "green"]

                        Rectangle {
                            width: units.gu(8)
                            height: units.gu(4)
                            color: modelData
                            function trigger() {
                                print("Color rect is clicked");
                            }
                        }
                    }
                }
            }
        }

//        Component.onCompleted: panel.open();
    }
}

