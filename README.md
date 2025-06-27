# HyDE-Helper 🚀

Hybrid Desktop Environment (HyDE) 的便捷安装/更新助手，专为 Arch Linux 用户设计。

## 功能特点
- 一键安装 HyDE 及所有依赖
- 一键更新到最新版 HyDE
- 中文提示友好交互
- 无需下载脚本直接执行

## 安装方法
### 使用 curl 直接执行安装脚本
```bash
bash -c "$(curl -fsSL https://github.com/mcxiaochenn/HyDE-Helper/raw/refs/heads/main/shell/HyDE-install.sh)"
```

## 更新方法
### 使用 curl 直接执行更新脚本
```bash
bash -c "$(curl -fsSL https://github.com/mcxiaochenn/HyDE-Helper/raw/refs/heads/main/shell/HyDE-update.sh)"
```

## 注意事项
1. 仅适用于 Arch Linux 及其衍生发行版
2. 需要 sudo 权限安装依赖包
3. 安装完成后建议重启系统
4. 确保网络连接正常

## 亮点
1. 用户友好提示:
  - 使用表情符号和颜色增强可读性
  - 每个步骤都有明确的中文说明
  - 安装完成后给出明确的操作建议

2. 可用性增强:
  - ``set -e``确保任何步骤失败时脚本立即退出
  - ``--noconfirm``自动确认 pacman 安装
  - ``--needed``避免重复安装已有包

3. 安全性:
  - 使用官方 GitHub 源
  - 浅克隆节省时间和空间
  - 清晰的执行过程可视化

4. 简洁使用:
  - 无需下载脚本到本地
  - 单命令完成所有操作
  - 适合直接复制粘贴执行
