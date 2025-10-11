include(cmake/CPM.cmake)

CPMAddPackage(
    URI "gh:InCom-0/icu-cpm#cpm"
)

add_library(ICU::uc ALIAS icu)  # this alias is needed by harfbuzz
add_library(icuuc ALIAS icu)  # this alias is needed by sfntly