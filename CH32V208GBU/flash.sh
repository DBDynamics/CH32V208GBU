#!/bin/bash

# WCH OpenOCD 路径
OPENOCD_BIN="/root/wch-openocd/src/openocd"
# 配置文件路径
OPENOCD_CFG="/root/wch-openocd/tcl/target/wch-riscv.cfg"
# 固件文件路径
FIRMWARE="build/CH32V208GBU.bin"

# 检查固件是否存在
if [ ! -f "$FIRMWARE" ]; then
    echo "错误: 固件文件 $FIRMWARE 未找到!"
    echo "请先编译项目: make"
    exit 1
fi

echo "正在将 $FIRMWARE 烧录到 CH32V208GBU..."

# 执行烧录
# program <filename> [address] [verify] [reset] [exit]
$OPENOCD_BIN -f "$OPENOCD_CFG" -c "program $FIRMWARE 0x00000000 verify reset exit"
