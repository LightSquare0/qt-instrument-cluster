cmake_minimum_required(VERSION 3.16)

project(instrumentcluster VERSION 1.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
if (APPLE) 
	set(Qt6_DIR "/Users/samper2/Qt/6.4.0/macos/lib/cmake/Qt6/")
endif()

include_directories( .
)

find_package(Qt6 6.4 COMPONENTS Quick Gui Core5Compat REQUIRED)
qt_standard_project_setup()

qt_add_executable(cluster
		main.cpp
		Vehicle.h
		Vehicle.cpp
	)

qt_add_qml_module(cluster
	URI resources 
	VERSION 1.0
	QML_FILES
		qml/main.qml
		qml/Styles/qmldir
		qml/Styles/Theme.qml
		qml/BottomBar.qml
		qml/MainView.qml
		qml/Components/StatProgressBar.qml
		qml/Components/Stat.qml
		qml/Components/Gauge.qml
		qml/Components/GaugeWidget.qml
		qml/Components/WidgetLoader.qml
		qml/Components/Needle.qml
		qml/Components/Rotator.qml
		qml/Widgets/BigMeter.qml
		qml/Widgets/TripComputer.qml
		qml/Utils/RoundedShape.qml
		qml/Utils/FilledItem.qml
	RESOURCES
    images/MainGradient.png
		icons/gas.svg
		icons/odometer.svg
		icons/thermostat.svg
		icons/trip.svg
		fonts/LexendDeca-Light.ttf
		fonts/LexendDeca-Regular.ttf
	)

target_link_libraries(cluster PUBLIC Qt6::Gui Qt6::Quick Qt6::Core5Compat)
