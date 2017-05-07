project (com.github.matzipan.rezolvat)

cmake_minimum_required (VERSION 2.6)

set (APP_NAME "Rezolvat")
set (EXEC_NAME "com.github.matzipan.rezolvat")
set (PROJECT_DESCRIPTION "Get it done.")
set (RELEASE_NAME "")
set (VERSION "0.1")
set (VERSION_INFO "")

set (PROJECT_FQDN "com.github.matzipan.rezolvat")
set (DBUS_OBJECTS "/com/github/matzipan/rezolvat")

set (PREFIX ${CMAKE_INSTALL_PREFIX})
set (DATADIR "${CMAKE_INSTALL_PREFIX}/share")
set (PKGDATADIR "${DATADIR}/com.github.matzipan.rezolvat")
set (GETTEXT_PACKAGE "envoyer")

add_subdirectory (src)

install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/com.github.matzipan.rezolvat.desktop DESTINATION ${DATADIR}/applications/)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/com.github.matzipan.rezolvat.appdata.xml DESTINATION ${DATADIR}/metainfo/)