# CMake enabled sfntly

The original project [sfntly](https://github.com/googlefonts/sfntly) is not developed further and has outdated/incomplete CMake support.

This fork updates and upgrade the CMakeLists.txt to be readily consumable by [CPM](https://github.com/cpm-cmake/CPM.cmake) or [CMake's FetchContent](https://cmake.org/cmake/help/latest/module/FetchContent.html) when one wants to include sfntly as dependency to some other project. Note that it is necessary to specify the 'SOURCE_SUBDIR cpp' in FetchContent because the CMakeLists.txt file is located inside 'cpp' subdir and not in the root directory of the repo, which is slightly unusual.

Notable advantage of this fork is that it also automatically pulls in and builds [ICU](https://github.com/unicode-org/icu) which is a dependency of sfntly through [icu-cpm](https://github.com/InCom-0/icu-cpm), so that it doesn't depend on how or if ICU is installed on the system, so that it can be used cross-platform extremely easily.