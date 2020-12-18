#####################################################################################
#-----------------GUIBackend-----------------
# This file links UI and C++ Backend together
# Backend takes input from UI and pass it to domain
#####################################################################################

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.12)

PROJECT(GUIBackend LANGUAGES CXX)
SET (CMAKE_CXX_STANDARD 11)

SET(CMAKE_INCLUDE_CURRENT_DIR ON)
SET(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)

FIND_PACKAGE(Qt5 COMPONENTS Qml Core Gui Widgets XmlPatterns Test Quick REQUIRED)
INCLUDE_DIRECTORIES(${Qt5Widgets_INCLUDE_DIRS} ${QtQml_INCLUDE_DIRS})
ADD_DEFINITIONS(${Qt5Widgets_DEFINITIONS} ${QtQml_DEFINITIONS} ${${Qt5Quick_DEFINITIONS}})

# Project Header and Sources
SET(GUI_BACKEND_SOURCES
    GUIBackend.cpp
)

SET(GUI_BACKEND_HEADERS
    GUIBackend.h
)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/..)

#Compile as Shared Library
ADD_LIBRARY(${PROJECT_NAME} SHARED ${GUI_BACKEND_SOURCES} ${GUI_BACKEND_HEADERS})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC
    Qt5::Widgets
    Qt5::Core
    Qt5::Gui
    Qt5::XmlPatterns
    Qt5::Test
    Qt5::Quick
)
