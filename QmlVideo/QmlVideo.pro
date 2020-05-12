
#  在Qml中显示FFmpeg解码视频
#  时间：2018年5月20日15:48:48
#  by：池旭超
#  Qt_Version:5.7.1
#  QQ:120047898
#  CSDN:http://blog.csdn.net/cxc233

TEMPLATE = app

QT += qml quick

CONFIG += c++11

SOURCES += main.cpp \
    XVideo.cpp \
    XVideoThread.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    XVideo.h \
    XVideoThread.h

#因为移动端的ffmpeg和
win32{
INCLUDEPATH += $$PWD/ffmpeg/include_
LIBS += $$PWD/ffmpeg/lib/avcodec.lib \
        $$PWD/ffmpeg/lib/avdevice.lib \
        $$PWD/ffmpeg/lib/avfilter.lib \
        $$PWD/ffmpeg/lib/avformat.lib \
        $$PWD/ffmpeg/lib/avutil.lib \
        $$PWD/ffmpeg/lib/postproc.lib \
        $$PWD/ffmpeg/lib/swresample.lib \
        $$PWD/ffmpeg/lib/swscale.lib
}


android{
INCLUDEPATH += $$PWD/ffmpeg/include
LIBS +=  $$PWD/ffmpeg/lib/libavcodec-57.so \
        $$PWD/ffmpeg/lib/libavdevice-57.so \
        $$PWD/ffmpeg/lib/libavfilter-6.so \
        $$PWD/ffmpeg/lib/libavformat-57.so \
        $$PWD/ffmpeg/lib/libavutil-55.so \
        $$PWD/ffmpeg/lib/libpostproc-54.so \
        $$PWD/ffmpeg/lib/libswresample-2.so \
        $$PWD/ffmpeg/lib/libswscale-4.so


contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_EXTRA_LIBS = \
        $$PWD/ffmpeg/lib/libavcodec-57.so \
        $$PWD/ffmpeg/lib/libavdevice-57.so \
        $$PWD/ffmpeg/lib/libavfilter-6.so \
        $$PWD/ffmpeg/lib/libavformat-57.so \
        $$PWD/ffmpeg/lib/libavutil-55.so \
        $$PWD/ffmpeg/lib/libpostproc-54.so \
        $$PWD/ffmpeg/lib/libswresample-2.so \
        $$PWD/ffmpeg/lib/libswscale-4.so
}

}
