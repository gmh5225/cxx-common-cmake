ExternalProject_Add(remill
    GIT_REPOSITORY
        "https://github.com/mrexodia/remill"
    GIT_TAG
        "system-llvm-include"
    GIT_PROGRESS
        ON
    CMAKE_CACHE_ARGS
        ${CMAKE_ARGS}
        "-DUSE_SYSTEM_DEPENDENCIES:STRING=ON"
        "-DREMILL_ENABLE_TESTING:STRING=OFF"
    CMAKE_GENERATOR
        "Ninja"
)