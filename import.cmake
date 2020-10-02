include_directories( ${CMAKE_CURRENT_LIST_DIR}/include )

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>"
    CACHE INTERNAL "" FORCE)

add_library( f4se_common STATIC IMPORTED )
set_target_properties( f4se_common PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_LIST_DIR}/lib/f4se_common.lib )
add_library( f4se_internal STATIC IMPORTED )
set_target_properties( f4se_internal PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_LIST_DIR}/lib/f4se_internal.lib )
add_library( f4se_loader_common STATIC IMPORTED )
set_target_properties( f4se_loader_common PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_LIST_DIR}/lib/f4se_loader_common.lib )
