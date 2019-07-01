# 快速学习指引

本工程 fork 自 Substrate 官方 repo，我个人在学习过程中为 Substrate 源码增加了一些中文注释，以帮助国内开发者快速学习理解 Substrate。

你当然也可以参考 [原版 README](README_origin.adoc) 来学习。

**本工程的目的是为中文开发者分享我个人学习 Substrate 和 Rust 语言的经验以及技术细节，请不要用于商业目的。希望大家秉承开源精神，共建开源文化！**

## 基本环境配置（OSX）

安装 Rust

```shell
curl https://sh.rustup.rs -sSf | sh

rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup update stable
cargo install --git https://github.com/alexcrichton/wasm-gc
```

安装必要的依赖

```shell
brew install cmake pkg-config openssl git llvm
```

在你自己的工程主目录下 clone 本 repo

```shell
git clone https://github.com/paritytech/substrate.git
cd substrate
```

运行构建

```shell
./scripts/build.sh          # Builds the WebAssembly binaries
cargo build                 # Builds all native code
```

生成所有文档

```shell
cargo doc --package substrate
```

用 docker-nginx 来在本地 host 所有文档

```shell
cd doc-docker
./build.sh
./run.sh
```

启动成功之后你就可以通过 `http://localhost:2299/settings.html` 查看完整文档了。对源码中某个函数/方法/类库有疑问或者不知道其作用，只需在此页面中搜索其名称即可找到相应的文档。

> 如果不使用 docker，则可以直接访问 `<repo path>/target/doc/settings.html` 查看文档。

如果机器重启或 docker 服务重启，只需使用 `docker start substrate-doc` 命令启动容器即可，不用反复构建。

## 其他
