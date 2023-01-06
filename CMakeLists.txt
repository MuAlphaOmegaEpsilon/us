cmake_minimum_required(VERSION 3.20)

project(us VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(HEADERS src/theme.h)
set(SOURCES src/main.cpp src/theme.cpp)
set(QML_COMPONENTS qml/main.qml
                   qml/Base/Circle.qml
                   qml/Base/CircleButton.qml
                   qml/Base/RectangleButton.qml
                   qml/Base/Filler.qml
                   qml/Base/TextRoboto.qml
                   qml/Summary/SummaryButton.qml
                   qml/Summary/SummaryButtonExpenses.qml
                   qml/Summary/SummaryButtonInvestments.qml
                   qml/Summary/SummaryButtonLiquidity.qml
                   qml/Summary/SummaryButtonReports.qml
                   qml/Summary/SummaryButtonRevenues.qml
                   qml/Summary/SummaryPage.qml
                   qml/Welcome/WelcomePage.qml)
set(ASSETS assets/us.svg
           assets/fonts/Roboto-Thin.ttf
           assets/fonts/Roboto-Light.ttf
           assets/fonts/Roboto-Regular.ttf
           assets/fonts/Roboto-Medium.ttf
           assets/fonts/Roboto-Bold.ttf
           assets/fonts/Roboto-Black.ttf)
set(TRANSLATIONS translations/it.ts)

set_source_files_properties(${SOURCES} PROPERTIES COMPILE_FLAGS "-Wall -Warray-bounds -Wcast-align -Wcast-qual -Wchar-subscripts -Wcomment -Wconversion -Wdisabled-optimization -Wdouble-promotion -Weffc++ -Wextra -Wfloat-equal -Wformat=2 -Wformat-nonliteral -Wformat-security -Wformat-y2k -Wimplicit-fallthrough -Wimport -Winit-self -Winvalid-pch -Wmisleading-indentation -Wmissing-braces -Wmissing-field-initializers -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wno-unused-const-variable -Wno-unused-function -Wnull-dereference -Wpacked -Wparentheses -Wpedantic -Wpointer-arith -Wredundant-decls -Wreturn-type -Wsequence-point -Wshadow -Wshift-overflow -Wsign-compare -Wstack-protector -Wstrict-aliasing=2 -Wstrict-overflow=5 -Wswitch -Wswitch-default -Wswitch-enum -Wtautological-compare -Wtrigraphs -Wuninitialized -Wunknown-pragmas -Wunreachable-code -Wunused -Wunused-function -Wunused-label -Wunused-parameter -Wunused-value -Wunused-variable -Wvariadic-macros -Wvolatile-register-var -Wwrite-strings")
find_package(Qt6 6.4 COMPONENTS Quick LinguistTools REQUIRED)
qt_standard_project_setup()
qt_add_executable(us ${SOURCES} ${HEADERS})
qt_add_translations(us TS_FILES ${TRANSLATIONS})
qt_add_qml_module(us URI us_qml
                     VERSION 1.0
                     QML_FILES ${QML_COMPONENTS}
                     NO_RESOURCE_TARGET_PATH
                     RESOURCES ${ASSETS})
set_target_properties(us PROPERTIES MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
                                    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
                                    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
                                    MACOSX_BUNDLE TRUE
                                    WIN32_EXECUTABLE TRUE)
target_link_libraries(us PRIVATE Qt6::Quick)
install(TARGETS us BUNDLE DESTINATION .
                   LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
