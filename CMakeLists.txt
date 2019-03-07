cmake_minimum_required(VERSION 3.13)
project(HashBrowns)
enable_language(ASM)

set(CMAKE_CXX_STANDARD 17)
set_property(SOURCE x86.S PROPERTY LANGUAGE C)
add_executable(HashBrowns crypt.h crypt_blowfish.h crypt_blowfish.cpp crypt_gensalt.h crypt_gensalt.cpp wrapper.cpp main.cpp standard.hpp rand.hpp rand.cpp)