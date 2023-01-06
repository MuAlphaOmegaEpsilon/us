#include <QPalette>
#include "theme.h"

bool isSystemDarkTheme(const QPalette& palette) noexcept
{
    return palette.color(QPalette::WindowText).value() > palette.color(QPalette::Window).value();
}

Theme::Theme(bool darkTheme, QObject* parent) noexcept
    : QObject(parent), isDarkTheme(false), bgColor0(255,255,255), bgColor1(237,237,237), bgColor2(219,219,219), textColor(0,0,0), windowColor(242,242,242)
{
    setDarkTheme(darkTheme);
}
void Theme::setDarkTheme(bool newDarkThemeValue) noexcept
{
    if(newDarkThemeValue == isDarkTheme)
        return;
    isDarkTheme = newDarkThemeValue;
    if (newDarkThemeValue)
    {
        bgColor0 = QColor(34,34,34);
        bgColor1 = QColor(52,52,52);
        bgColor2 = QColor(70,70,70);
        textColor = QColor(255,255,255);
        windowColor = QColor(0,0,0);
    }
    else
    {
        bgColor0 = QColor(255,255,255);
        bgColor1 = QColor(237,237,237);
        bgColor2 = QColor(219,219,219);
        textColor = QColor(0,0,0);
        windowColor = QColor(242,242,242);
    }
    Q_EMIT bgColor0Changed();
    Q_EMIT bgColor1Changed();
    Q_EMIT bgColor2Changed();
    Q_EMIT textColorChanged();
    Q_EMIT windowColorChanged();
    Q_EMIT isDarkThemeChanged();
}
