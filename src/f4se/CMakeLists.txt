include_directories(.)

add_subdirectory(f4se_common)
add_subdirectory(f4se_loader_common)
add_subdirectory(f4se_loader)
add_subdirectory(f4se)
add_subdirectory(f4se_steam_loader)

install(DIRECTORY xbyak DESTINATION "${F4SE_INSTALL_DIR}/dev/include/xbyak" )