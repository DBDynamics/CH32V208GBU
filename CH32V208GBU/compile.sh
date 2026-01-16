#!/bin/bash
echo "开始编译项目: CH32V208GBU ..."
make -j4
RET=$?
if [ $RET -eq 0 ]; then
    echo "编译成功!"
    if [ -f "build/CH32V208GBU.bin" ]; then
        echo "生成的固件: build/CH32V208GBU.bin"
        ls -lh "build/CH32V208GBU.bin"
    fi
else
    echo "编译失败! 错误码: $RET"
    exit 1
fi
