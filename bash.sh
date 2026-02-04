git clone https://github.com/llvm/llvm-test-suite.git
 python3 -m venv .venv
 . .venv/bin/activate
pip install git+https://github.com/llvm/llvm-project.git#subdirectory=llvm/utils/lit
 lit --version
lit 20.0.0dev
mkdir test-suite-build
% cd test-suite-build
% cmake -DCMAKE_C_COMPILER=<path to llvm build>/bin/clang \
        -C../llvm-test-suite/cmake/caches/O3.cmake \
        ../llvm-test-suite
