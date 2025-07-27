#!/bin/bash

# 🚀 多智能体任务调度系统专利网页部署脚本

echo "🚀 开始部署多智能体任务调度系统专利网页..."

# 检查是否有未提交的更改
if [[ -n $(git status --porcelain) ]]; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    git commit -m "deploy: 准备部署网页到GitHub Pages"
fi

# 检查是否已经添加了远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ 错误：未找到远程仓库"
    echo "请先创建GitHub仓库并添加远程地址："
    echo "git remote add origin https://github.com/你的用户名/multi-agent-task-scheduler-patent.git"
    exit 1
fi

# 推送到GitHub
echo "📤 推送代码到GitHub..."
git branch -M main
git push -u origin main

echo "✅ 代码推送完成！"
echo ""
echo "🌐 接下来请按照以下步骤启用GitHub Pages："
echo "1. 访问你的GitHub仓库页面"
echo "2. 点击 'Settings' 标签"
echo "3. 滚动到 'Pages' 部分"
echo "4. 在 'Source' 下选择 'Deploy from a branch'"
echo "5. 选择 'main' 分支和 '/ (root)' 文件夹"
echo "6. 点击 'Save'"
echo ""
echo "🎉 几分钟后，你的网页将在以下地址可用："
echo "https://$(git remote get-url origin | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1.github.io\/\2/')/"
echo ""
echo "📱 你也可以扫描二维码访问（部署完成后）"