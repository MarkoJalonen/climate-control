qt_add_library(ElementsLib STATIC)

target_link_libraries(ElementsLib PRIVATE Qt6::Quick)

qt_add_qml_module(ElementsLib
    URI Elements
    QML_FILES
        CustomSlider.qml
        ToggleIcon.qml
    RESOURCES 
        Assets/windscreen_demist_white.svg
        Assets/air_circulation_white.svg
        Assets/fan_white.svg
        Assets/heated_seat_white.svg
        Assets/rearscreen_demist_white.svg
)