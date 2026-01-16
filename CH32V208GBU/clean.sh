#!/bin/bash
if [ -f "Makefile" ]; then
    echo "正在执行 make clean..."
    make clean
else
    echo "Makefile 未找到，直接删除 build 目录..."
    rm -rf build
fi
echo "清理完成!"
