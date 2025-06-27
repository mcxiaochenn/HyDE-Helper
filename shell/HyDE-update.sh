#!/bin/bash
# HyDE 更新脚本
set -e

echo "🔄 进入 HyDE 目录..."
cd ~/HyDE

echo "⏬ 拉取最新代码..."
git pull origin master

echo "🛠️ 执行更新安装..."
cd Scripts
./install.sh -r

echo -e "\n✨ HyDE 已成功更新！"
echo "建议重新登录或重启系统使更改生效"
