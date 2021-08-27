cmake_minimum_required(VERSION 3.19)
project(native_lib LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

add_subdirectory(${PARENT_DIR}/corrosion corrosion)
add_library(native_lib SHARED cpp/weather.cc)
target_link_libraries(native_lib PRIVATE flutter)

corrosion_import_crate(MANIFEST_PATH rust/Cargo.toml)