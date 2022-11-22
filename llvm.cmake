ExternalProject_Add(llvm
    URL
        "https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.4/llvm-project-15.0.4.src.tar.xz"
    URL_HASH
        "SHA256=a3112dca9bdea4095361829910b74fb6b9da8ae6e3500db67c43c540ad6072da"
    CMAKE_CACHE_ARGS
        ${CMAKE_ARGS}
        "-DLLVM_ENABLE_PROJECTS:STRING=clang;lld"
        "-DLLVM_ENABLE_ASSERTIONS:STRING=ON"
        "-DLLVM_ENABLE_DUMP:STRING=ON"
        "-DLLVM_ENABLE_RTTI:STRING=ON"
        "-DLLVM_ENABLE_LIBEDIT:STRING=OFF"
    CMAKE_GENERATOR
        "Ninja"
    SOURCE_SUBDIR
        "llvm"
)