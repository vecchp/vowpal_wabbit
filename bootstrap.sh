BOOST_SOURCE=https://dl.bintray.com/boostorg/release/1.65.1/source/boost_1_65_1.tar.gz

wget $BOOST_SOURCE -O boost.tar.gz
tar -xzf boost.tar.gz

cd boost_1_65_0
./bootstrap.sh --with-toolset=$CXX
./b2 link=static cxxflags=-fPIC threading=multi -j`expr $(nproc) + 1` release install
cd ..