#####################################################################################
#-----------------Train Traffic Signaling System-----------------
# The project is divided into three parts : Domain, GUI and GUIBackend which are compiled as shared libraries.
# Domain is responsible for handling algorithm and database
# GUI is responsible for handling User Interface
# GUIBackend is intermediary between GUI and Domain
#####################################################################################

CMAKE_MINIMUM_REQUIRED(VERSION 3.5.1)

PROJECT(TrainTrafficSignalingSystem LANGUAGES CXX)

MESSAGE(STATUS "Train Traffic Signaling System")
MESSAGE(STATUS "Using PLATFORM : Linux")

SET(CMAKE_INCLUDE_CURRENT_DIR ON)
SET(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)

FIND_PACKAGE(Qt5 COMPONENTS Core Quick Qml Gui Widgets XmlPatterns Test REQUIRED)
INCLUDE_DIRECTORIES(${Qt5Widgets_INCLUDE_DIRS} ${QtQml_INCLUDE_DIRS})
ADD_DEFINITIONS(${Qt5Widgets_DEFINITIONS} ${QtQml_DEFINITIONS} ${${Qt5Quick_DEFINITIONS}})

#Adding Project Subdirectory
ADD_SUBDIRECTORY(GUIBackend)
ADD_SUBDIRECTORY(Domain)

ADD_EXECUTABLE(${PROJECT_NAME} "main.cpp" "GUI/qml.qrc")
#qt5_use_modules(${PROJECT_NAME} Quick Core Network)

#linking Subdirectory to Project
TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC GUIBackend)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC Domain)

#linking external / Qt libs
TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC
    Qt5::Widgets
    Qt5::Core
    Qt5::Gui
    Qt5::XmlPatterns
    Qt5::Test
    Qt5::Quick
)
