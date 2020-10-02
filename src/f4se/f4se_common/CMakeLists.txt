add_compile_definitions(_LIB)

set( HEADERS
  BranchTrampoline.h
  f4se_version.h
  ../f4se_loader/Options.h
  Relocation.h
  SafeWrite.h
  Utilities.h
  )

set( SOURCES
  BranchTrampoline.cpp
  ../f4se_loader/Options.cpp
  Relocation.cpp
  SafeWrite.cpp
  Utilities.cpp
)  

add_library(f4se_common STATIC ${HEADERS} ${SOURCES} f4se_version.rc $<TARGET_OBJECTS:common> )

install(TARGETS f4se_common DESTINATION "${F4SE_INSTALL_DIR}/dev/lib" )
install(FILES ${HEADERS} DESTINATION "${F4SE_INSTALL_DIR}/dev/include/f4se_common" )
