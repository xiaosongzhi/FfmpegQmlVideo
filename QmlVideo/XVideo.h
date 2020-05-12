#ifndef XVideo_H
#define XVideo_H
#include <QQuickPaintedItem>
#include <QImage>
#include "XVideoThread.h"
class XVideo : public QQuickPaintedItem
{
    Q_OBJECT
public:
    Q_INVOKABLE void SetSize(int width, int height);
    Q_PROPERTY(int          nWidth           READ getWidth         WRITE setWidth        NOTIFY widthChanged)
    Q_PROPERTY(int          nHeight          READ getHeight        WRITE setHeight       NOTIFY heightChanged)
    Q_PROPERTY(QString      strVideoPath     READ getStrVideoPath  WRITE setStrVideoPath NOTIFY strVideoPathChanged)

    explicit XVideo();
    ~XVideo();
    int getHeight() const;
    void setHeight(int value);

    int getWidth() const;
    void setWidth(int value);

    QString getStrVideoPath() const;
    void setStrVideoPath(const QString &value);

protected:
    virtual void paint(QPainter *pPainter);
private:

    QImage m_Frame;
     XVideoThread *m_pVedioThread;
     int nHeight;
     int nWidth;
     QString strVideoPath;
public slots:
     void slot_GetOneFrame(QImage *image);

signals:
     void widthChanged(int nWidth);
     void heightChanged(int nHeight);
     void strVideoPathChanged(QString strPath);

};

#endif // XVideo_H
