import QtQuick 2.5
import QtQuick.Controls 1.4


ApplicationWindow {
    visible: true
    id: main;

    //用来适配手机屏幕的一些转换函数
    property real multiplierH: (main.height/640)*1000;
    property real multiplierW: (main.width/360)*1000;
     function dpH(numbers) {
        return numbers*multiplierH/1000;
     }
     function dpW(numbers) {
        return numbers*multiplierW/1000;
     }
     function dpX(numbers){
         return (dpW(numbers)+dpH(numbers))/2;
     }
    width: 360;
    height: 640;


    //标记是否在播放
    property bool isPlaying: false;
    Rectangle{

        width: parent.width;
        height: dpW(35);
        color: "lightblue";
        Text{
            id:btn_text;
            anchors.centerIn: parent;
            text: isPlaying ? qsTr("停止播放") : qsTr("开始播放");
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                if (isPlaying)
                {
                    stack_view.pop();
                }
                else
                {
                    stack_view.push("qrc:/QmlVideo.qml");
                }
                isPlaying = !isPlaying;
            }
        }
    }
    StackView
    {
        anchors.centerIn: parent;
        id:stack_view;
        initialItem: Rectangle{
        }
    }

}
