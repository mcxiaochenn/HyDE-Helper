#!/bin/bash
# HyDE 安装脚本
set -e

echo "🛠️ 正在安装必要依赖 (git、base-devel、curl 和 jq)..."
sudo pacman -S --needed --noconfirm git base-devel curl jq

# 获取最新稳定版本号
echo "🔍 正在获取最新稳定版本信息..."
LATEST_TAG=$(curl -s https://api.github.com/repos/HyDE-Project/HyDE/releases/latest | jq -r '.tag_name')
echo "✅ 最新稳定构建版本: $LATEST_TAG"

echo "📥 克隆 HyDE 项目到 ~/HyDE (完整克隆)..."
git clone https://github.com/HyDE-Project/HyDE ~/HyDE

echo "🔁 切换到稳定版本: $LATEST_TAG..."
cd ~/HyDE
git checkout -q $LATEST_TAG

echo "🚀 进入安装目录并执行安装脚本..."
cd Scripts
./install.sh

echo -e "\n✅ HyDE $LATEST_TAG 安装完成！"
echo "请重启系统以确保改动生效！"
