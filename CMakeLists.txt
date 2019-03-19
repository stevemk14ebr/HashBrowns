cmake_minimum_required(VERSION 3.5)
project(HashBrowns)
enable_language(ASM)

find_package(aws-lambda-runtime CONFIG REQUIRED
        HINTS "/home/steve/lambda-install/lib/aws-lambda-runtime/cmake/")

set(CMAKE_CXX_STANDARD 17)
set_property(SOURCE x86.S PROPERTY LANGUAGE C)
add_executable(HashBrowns crypt.h crypt_blowfish.h crypt_blowfish.cpp crypt_gensalt.h crypt_gensalt.cpp wrapper.cpp main.cpp standard.hpp rand.hpp rand.cpp)

target_link_libraries(HashBrowns PRIVATE AWS::aws-lambda-runtime)
aws_lambda_package_target(HashBrowns)