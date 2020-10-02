include_guard()

set(F4SE_VERSION_REGEX "^#define CURRENT_RELEASE_F4SE_STR[ \t]+\"([^\"]+)\"")
set(F4SE_RUNTIME_VERSION_REGEX "^#define CURRENT_RELEASE_RUNTIME[ \t]+RUNTIME_VERSION_(([0-9]+)_([0-9]+)_([0-9]+)(_([0-9]+))?)()()[ \t]*(/.*)?$")

file(STRINGS "${CMAKE_CURRENT_LIST_DIR}/f4se/f4se_common/f4se_version.h" F4SE_VERSION_LINE REGEX "${F4SE_VERSION_REGEX}")
string(REGEX REPLACE "${F4SE_VERSION_REGEX}" "\\1" F4SE_VERSION_STR "${F4SE_VERSION_LINE}")
string(REPLACE "." "_" F4SE_VERSION_TAG "${F4SE_VERSION_STR}")
string(REGEX REPLACE "_([1-9])_" "_0\\1_" F4SE_VERSION_TAG "${F4SE_VERSION_TAG}")

file(STRINGS "${CMAKE_CURRENT_LIST_DIR}/f4se/f4se_common/f4se_version.h" F4SE_RUNTIME_VERSION_LINE REGEX "${F4SE_RUNTIME_VERSION_REGEX}")
string(REGEX REPLACE "${F4SE_RUNTIME_VERSION_REGEX}" "\\1" F4SE_RUNTIME_VERSION_TAG "${F4SE_RUNTIME_VERSION_LINE}")
string(REPLACE "_" "." F4SE_RUNTIME_VERSION_STR "${F4SE_RUNTIME_VERSION_TAG}")

macro( mk_version output_var a b c d )
    math( EXPR
        ${output_var}
        "((${a} * 256 + ${b}) * 4096 + ${c}) * 16 + ${d}"
        OUTPUT_FORMAT HEXADECIMAL)
endmacro()

macro( runtime_version output_var )
    mk_version( ${output_var}
        0${PROJECT_VERSION_MAJOR}
        0${PROJECT_VERSION_MINOR}
        0${PROJECT_VERSION_PATCH}
        0${PROJECT_VERSION_TWEAK}
    )
endmacro()
