cmake_minimum_required(VERSION 3.9)
project(Airkiss C)

set(CMAKE_C_STANDARD 99)



add_executable(Airkiss
        main.c
        airkiss.h
        utils
        capture
        libairkiss.a
        libairkiss_log.a)