#!/bin/bash
# HyDE 安装脚本
set -e

echo "🛠️ 正在安装必要依赖 (git 和 base-devel)..."
sudo pacman -S --needed --noconfirm git base-devel

echo "📥 克隆 HyDE 项目到 ~/HyDE (浅克隆)..."
git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE

echo "🚀 进入安装目录并执行安装脚本..."
cd ~/HyDE/Scripts
./install.sh

echo -e "\n✅ HyDE 安装完成！"
echo "请重启系统或执行 'startx' 启动 HyDE"
