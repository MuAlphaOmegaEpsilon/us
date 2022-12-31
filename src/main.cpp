#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QLocale>
#include <QTranslator>

bool setupLocalization(QGuiApplication* app, QTranslator* translator) noexcept
{
    const QStringList uiLanguages = QLocale::system().uiLanguages();
    qInfo() << "System is reporting the following languages:" << uiLanguages.join(' ');
    for (const QString &locale : uiLanguages)
	{
        if (translator->load(locale))
        {
            qDebug() << "Loaded" << locale << "locale";
            return app->installTranslator(translator);
        }
		if (locale == "en")
		{
            qDebug() << "Loaded default en locale";
			return true;
		}
	}
    qWarning() << "No suitable locale found for languages requested by the system";
    return false;
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QTranslator translator;
    if (!setupLocalization(&app, &translator))
        qDebug() << "No translation found for current language, falling back to english.";

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
    [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
