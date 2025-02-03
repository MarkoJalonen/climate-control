cmake_minimum_required(VERSION 3.22.1)

project(climatecontrol VERSION 1.0.0 LANGUAGES CXX)

list(APPEND CMAKE_PREFIX_PATH "~/Qt/6.8.1/gcc_64/lib/cmake/")

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appclimatecontrol
    main.cpp
)

qt_add_qml_module(appclimatecontrol
    URI ClimateControl
    QML_FILES Main.qml
)

add_subdirectory(Elements)

target_link_libraries(appclimatecontrol 
    PRIVATE Qt6::Quick ElementsLib
)
