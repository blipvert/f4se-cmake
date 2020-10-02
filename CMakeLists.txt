# Top-level CMakeLists.txt, intentionally not loaded by Include.cmake

cmake_minimum_required( VERSION 3.15.0 )
project( f4se )

if( CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT )
  set( CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/INSTALL" CACHE PATH "..." FORCE )
endif()

include( ./src/version.cmake )

set( F4SE_INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/f4se_${F4SE_VERSION_TAG})

install( CODE "file( REMOVE_RECURSE \"${F4SE_INSTALL_DIR}\" )" )

add_subdirectory( ./src )

install( DIRECTORY Data DESTINATION "${F4SE_INSTALL_DIR}" )
install( FILES
    CustomControlMap.txt
    f4se_readme.txt
    f4se_whatsnew.txt
    DESTINATION "${F4SE_INSTALL_DIR}"
)

install( FILES
    import.cmake
    DESTINATION "${F4SE_INSTALL_DIR}/dev"
)
