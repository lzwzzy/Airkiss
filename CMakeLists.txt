cmake_minimum_required(VERSION 3.7)
project(Airkiss C)

set(CMAKE_C_STANDARD 99)

aux_source_directory(. DIR_SRCS)

add_executable(Airkiss main.c utils
        ${DIR_SRCS})

target_link_libraries(Airkiss libairkiss.a libairkiss_log.a)