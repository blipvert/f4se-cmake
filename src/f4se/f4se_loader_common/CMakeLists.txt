add_compile_definitions(_LIB)

set( HEADERS
    IdentifyEXE.h
    Inject.h
    LoaderError.h
    Steam.h
)

set( SOURCES
    IdentifyEXE.cpp
    Inject.cpp
    LoaderError.cpp
    Steam.cpp
)

add_library( f4se_loader_common STATIC ${HEADERS} ${SOURCES} )

install(TARGETS f4se_loader_common DESTINATION "${F4SE_INSTALL_DIR}/dev/lib" )
install(FILES ${HEADERS} DESTINATION "${F4SE_INSTALL_DIR}/dev/include/f4se_loader_common" )
