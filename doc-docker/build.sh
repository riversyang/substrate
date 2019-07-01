mkdir ./doc
cp -r ../target/doc/ ./doc/
docker build -t='substrate-doc' .
rm -rf ./doc
