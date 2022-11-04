import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
//import QtQuick.Controls.Styles 1.4
//import QtQml.Models 2.12
//import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Aircarack-ng")

    Timer {
        id: dateTimer
        interval: 1000
        repeat: true
        running: true
        property var locale: Qt.locale()
        property date currentDate: new Date()
        property string dateString
        onTriggered:{
            curDateTxt.text = currentDate.toLocaleDateString(locale, Locale.ShortFormat);
        }
    }

    Timer {
        id: clockTimer
        interval: 1000
        repeat: true
        running: true
        onTriggered:{
            curTimeTxt.text =  Qt.formatTime(new Date(),"hh:mm:ss")
        }
    }

    Image {
        id: image
        x: 0
        y: 0
        width: 1280
        height: 720
        source: "images/main-bg.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: mainWin
        x: 0
        y: 0
        width: 1280
        height: 720
        color: "#00ffffff"

        Rectangle {
            id: airodumpWin
            x: 56
            y: 134
            width: 525
            height: 200
            color: "#00000000"
            border.color: "#ffffff"
        }

        Text {
            id: airomonLabel
            x: 260
            y: 96
            width: 118
            height: 31
            color: "#ffffff"
            text: qsTr("Airmon-ng")
            font.pixelSize: 24
        }

        Rectangle {
            id: airodumpWin1
            x: 701
            y: 134
            width: 525
            height: 200
            color: "#00000000"
            border.color: "#ffffff"
        }

        Rectangle {
            id: airodumpWin2
            x: 56
            y: 445
            width: 525
            height: 200
            color: "#00000000"
            border.color: "#ffffff"
        }

        Rectangle {
            id: airodumpWin3
            x: 701
            y: 445
            width: 525
            height: 200
            color: "#00000000"
            border.color: "#ffffff"
        }
        /*
        Item {
            width: 300
            height: 300

            //Rectangle {
                //id: background
                //anchors.fill: parent
                //color: "black"
            //}

            RectangularGlow {
                id: effect
                anchors.fill: rect
                glowRadius: 10
                spread: 0.2
                color: "white"
                cornerRadius: rect.radius + glowRadius
            }

            Rectangle {
                id: rect
                color: "black"
                anchors.centerIn: parent
                width: Math.round(parent.width / 1.5)
                height: Math.round(parent.height / 2)
                radius: 25
            }
        }
*/
        Button {
            id: airmonBtn
            x: 58
            y: 343
            width: 80
            height: 35
            text: qsTr("Send")
            background: Rectangle {
                color: "#161e20"
                radius: 50
            }
            layer.effect: DropShadow {
                color: "#ffffff"
                radius: 8
                verticalOffset: 4
                transparentBorder: true
                horizontalOffset: 4
                spread: 0
                samples: 17
            }
            palette.buttonText: "#ffffff"
            layer.enabled: true
        }

        Button {
            id: button1
            x: 701
            y: 343
            width: 80
            height: 35
            text: qsTr("Send")
            background: Rectangle {
                color: "#161e20"
                radius: 50
            }
            layer.effect: DropShadow {
                color: "#ffffff"
                radius: 8
                verticalOffset: 4
                transparentBorder: true
                horizontalOffset: 4
                spread: 0
                samples: 17
            }
            palette.buttonText: "#ffffff"
            layer.enabled: true

        }

        Rectangle {
            id: adumpBgRect
            x: 794
            y: 352
            width: 432
            height: 27
            color: "#00ffffff"
            border.color: "#ffffff"

            TextEdit {
                id: airmonTxtEdit1
                x: 3
                y: 5
                width: 426
                height: 18
                color: "#ffffff"
                text: qsTr("")
                font.pixelSize: 12
            }
        }

        Button {
            id: button2
            x: 58
            y: 653
            width: 80
            height: 35
            text: qsTr("Send")
            background: Rectangle {
                color: "#161e20"
                radius: 50
            }
            layer.effect: DropShadow {
                color: "#ffffff"
                radius: 8
                verticalOffset: 4
                transparentBorder: true
                horizontalOffset: 4
                spread: 0
                samples: 17
            }
            palette.buttonText: "#ffffff"
            layer.enabled: true
        }

        Rectangle {
            id: aireplayBgRect
            x: 149
            y: 662
            width: 432
            height: 27
            color: "#00ffffff"
            border.color: "#ffffff"

            TextEdit {
                id: airreplayTxtEdit
                x: 3
                y: 5
                width: 426
                height: 18
                color: "#ffffff"
                text: qsTr("")
                font.pixelSize: 12
            }
        }

        Button {
            id: button3
            x: 701
            y: 653
            width: 80
            height: 35
            text: qsTr("Send")
            background: Rectangle {
                color: "#161e20"
                radius: 50
            }
            layer.effect: DropShadow {
                color: "#ffffff"
                radius: 8
                verticalOffset: 4
                transparentBorder: true
                horizontalOffset: 4
                spread: 0
                samples: 17
            }
            palette.buttonText: "#ffffff"
            layer.enabled: true
        }

        Rectangle {
            id: aircrackBgRect
            x: 794
            y: 662
            width: 432
            height: 27
            color: "#00ffffff"
            border.color: "#ffffff"

            TextEdit {
                id: airmonTxtEdit2
                x: 3
                y: 5
                width: 426
                height: 18
                color: "#ffffff"
                text: qsTr("")
                font.pixelSize: 15
                clip: true
            }
        }

        Rectangle {
            id: amBgRect
            x: 149
            y: 352
            width: 432
            height: 27
            color: "#00ffffff"
            border.color: "#ffffff"

            TextEdit {
                id: airmonTxtEdit
                x: 3
                y: 5
                width: 427
                height: 17
                color: "#ffffff"
                text: qsTr("")
                font.pixelSize: 12
            }
        }

        Text {
            id: aireplayLabel
            x: 255
            y: 408
            width: 127
            height: 31
            color: "#ffffff"
            text: qsTr("Aireplay-ng")
            font.pixelSize: 24
        }

        Text {
            id: aircrackLabel
            x: 900
            y: 408
            width: 127
            height: 31
            color: "#ffffff"
            text: qsTr("Aircrack-ng")
            font.pixelSize: 24
        }

        Text {
            id: airodumpLabel1
            x: 891
            y: 96
            width: 146
            height: 31
            color: "#ffffff"
            text: qsTr("Airodump-ng")
            font.pixelSize: 24
        }

        Text {
            id: curTimeTxt
            x: 1190
            y: 9
            width: 82
            height: 15
            color: "#ffffff"
            text: qsTr("")
            font.pixelSize: 18
        }

        Text {
            id: curDateTxt
            x: 1191
            y: 30
            width: 84
            height: 15
            color: "#ffffff"
            text: qsTr("")
            font.pixelSize: 18
            minimumPixelSize: 12
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:17}D{i:22}D{i:27}
}
##^##*/
