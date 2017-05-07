find_package(PkgConfig)

pkg_check_modules(DEPS REQUIRED gtk+-3.0 granite)

add_definitions(${DEPS_CFLAGS})
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

find_package(Vala REQUIRED)
include(ValaVersion)
ensure_vala_version("0.16" MINIMUM)

configure_file (config.vala.cmake ${CMAKE_BINARY_DIR}/config.vala)

include(ValaPrecompile)

vala_precompile(VALA_C ${EXEC_NAME}
    Main.vala
    Application.vala
    Widgets/Window.vala
    Widgets/Headerbar.vala
    ${CMAKE_BINARY_DIR}/config.vala
PACKAGES
    gtk+-3.0
    granite
)

add_executable(${EXEC_NAME} ${VALA_C})
install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)
