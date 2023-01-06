#pragma once
#include <QObject>
#include <QColor>

bool isSystemDarkTheme(const QPalette& palette) noexcept;

struct Theme : public QObject
{
	Q_OBJECT
    Q_PROPERTY(bool isDarkTheme   READ getIsDarkTheme NOTIFY isDarkThemeChanged)
    Q_PROPERTY(QColor bgColor0    READ getBgColor0    NOTIFY bgColor0Changed)
    Q_PROPERTY(QColor bgColor1    READ getBgColor1    NOTIFY bgColor1Changed)
    Q_PROPERTY(QColor bgColor2    READ getBgColor2    NOTIFY bgColor2Changed)
    Q_PROPERTY(QColor buttonColor READ getBgColor1    NOTIFY bgColor1Changed)
    Q_PROPERTY(QColor textColor   READ getTextColor   NOTIFY textColorChanged)
    Q_PROPERTY(QColor windowColor READ getWindowColor NOTIFY windowColorChanged)
public:
    Theme(bool darkTheme, QObject* parent = nullptr) noexcept;
    void setDarkTheme(bool newDarkThemeValue) noexcept;
    inline bool getIsDarkTheme() const noexcept { return isDarkTheme; }
    inline QColor getBgColor0() const noexcept { return bgColor0; }
    inline QColor getBgColor1() const noexcept { return bgColor1; }
    inline QColor getBgColor2() const noexcept { return bgColor2; }
    inline QColor getTextColor() const noexcept { return textColor; }
    inline QColor getWindowColor() const noexcept { return windowColor; }
signals:
    void isDarkThemeChanged();
    void bgColor0Changed();
    void bgColor1Changed();
    void bgColor2Changed();
    void textColorChanged();
    void windowColorChanged();
public:
    bool isDarkTheme;
    QColor bgColor0;
    QColor bgColor1;
    QColor bgColor2;
    QColor textColor;
    QColor windowColor;
};
