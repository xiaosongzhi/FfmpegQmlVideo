import QtQuick 2.5
import XVideo 1.0
Rectangle {
    width: dpW(360)
    height: dpH(640)
    XVideo{
        anchors.centerIn: parent;
        nWidth :dpW(360);//cpp中的宽和高
        nHeight: dpH(200);
        width: dpW(360);
        height: dpH(200);
        strVideoPath: "rtmp://live.hkstv.hk.lxdns.com/live/hks";//香港电视台直播流
    }
}
