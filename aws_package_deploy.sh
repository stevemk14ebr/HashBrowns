mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
make aws-lambda-package-HashBrowns
