qt_add_library(ElementsLib STATIC)

target_link_libraries(ElementsLib PRIVATE Qt6::Quick)

qt_add_qml_module(ElementsLib
    URI Elements
    QML_FILES
        CustomSlider.qml
        TempIcon.qml
        ToggleIcon.qml
    RESOURCES 
        Assets/windscreen_demist_white.svg
)