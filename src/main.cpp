#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QLocale>
#include <QTranslator>
#include <QFontDatabase>
#include <QQmlContext>
#include <QPalette>

#include "theme.h"

bool setupLocalization(QGuiApplication* app, QTranslator* translator) noexcept
{
    const QStringList uiLanguages = QLocale::system().uiLanguages();
    qInfo() << "System is reporting the following languages:" << uiLanguages.join(' ');
    for (const QString &locale : uiLanguages)
	{
        if (translator->load(locale))
        {
            qDebug() << "Installing" << locale << "locale";
            return app->installTranslator(translator);
        }
        if (locale == QStringLiteral("en"))
		{
            qDebug() << "Loaded default en locale";
			return true;
		}
	}
    qWarning() << "No suitable locale found for languages requested by the system";
    return false;
}

bool loadRobotoFont() noexcept
{
    // For examples of this font open dafont.com/roboto.font
    int loadedNum = 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Thin.ttf")) >= 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Light.ttf")) >= 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Regular.ttf")) >= 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Medium.ttf")) >= 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Bold.ttf")) >= 0;
    loadedNum += QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Black.ttf")) >= 0;
    return loadedNum == 6;
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QTranslator translator;
    if (!setupLocalization(&app, &translator))
        qDebug() << "Something went wrong when trying to localize the application. Maybe no supported language was found or the translation file wasn't complete.";
    if (!loadRobotoFont())
        qFatal("Couldn't load the Roboto font family.");
    Theme theme(isSystemDarkTheme(app.palette()));

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty(QStringLiteral("theme"), &theme);
    engine.load(QStringLiteral(":/qml/main.qml"));

    return app.exec();
}
