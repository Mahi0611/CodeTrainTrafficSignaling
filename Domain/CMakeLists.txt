#####################################################################################
#----------------- Domain -----------------
# Responsible for Sceduling Algorithm
#####################################################################################

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.12)

PROJECT(Domain LANGUAGES CXX)
SET (CMAKE_CXX_STANDARD 11)

SET(CMAKE_INCLUDE_CURRENT_DIR ON)
SET(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)

FIND_PACKAGE(Qt5 COMPONENTS Qml Core Gui Widgets XmlPatterns Test Quick REQUIRED)
INCLUDE_DIRECTORIES(${Qt5Widgets_INCLUDE_DIRS} ${QtQml_INCLUDE_DIRS})
ADD_DEFINITIONS(${Qt5Widgets_DEFINITIONS} ${QtQml_DEFINITIONS} ${${Qt5Quick_DEFINITIONS}})

# Project Header and Sources
SET(DOMAIN_SOURCES
    DomainEntryPoint.cpp
    JSONLoader.cpp
    SimulationDispatcher.cpp
    Train.cpp
    Station.cpp
)

SET(DOMAIN_HEADERS
    CommonHeader.h
    DomainEntryPoint.h
    JSONLoader.h
    SimulationDispatcher.h
    Train.h
    Station.h
)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/..)

#Compile as Shared Library
ADD_LIBRARY(${PROJECT_NAME} SHARED ${DOMAIN_SOURCES} ${DOMAIN_HEADERS})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC
    Qt5::Widgets
    Qt5::Core
    Qt5::Gui
    Qt5::XmlPatterns
    Qt5::Test
    Qt5::Quick
)
