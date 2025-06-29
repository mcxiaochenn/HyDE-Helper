#!/bin/bash
# HyDE 更新脚本
set -e

echo "🔍 正在获取最新稳定版本信息..."
LATEST_TAG=$(curl -s https://api.github.com/repos/HyDE-Project/HyDE/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
echo "✅ 最新稳定构建版本: $LATEST_TAG"

echo "🔄 进入 HyDE 目录..."
cd ~/HyDE

echo "⏬ 获取最新代码和标签..."
git fetch --all --tags

echo "🔁 切换到稳定版本: $LATEST_TAG..."
git checkout -q $LATEST_TAG

echo "🛠️ 执行更新安装..."
cd Scripts
./install.sh -r

echo -e "\n✨ HyDE 已成功更新到 $LATEST_TAG 版本！"
echo "建议重新登录或重启系统使更改生效"
