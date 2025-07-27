# 🚀 网页部署指南

## 方法1：GitHub Pages 部署（推荐）

### 步骤1：创建GitHub仓库
1. 访问 https://github.com/new
2. 仓库名：`multi-agent-task-scheduler-patent`
3. 描述：`基于任务DAG和负载感知的多智能体任务调度系统专利`
4. 选择 Public
5. 不要勾选任何初始化选项
6. 点击 "Create repository"

### 步骤2：推送代码到GitHub
在终端中执行以下命令：

```bash
# 添加远程仓库（替换为你的用户名）
git remote add origin https://github.com/你的用户名/multi-agent-task-scheduler-patent.git

# 推送代码
git branch -M main
git push -u origin main
```

### 步骤3：启用GitHub Pages
1. 在GitHub仓库页面，点击 "Settings"
2. 滚动到 "Pages" 部分
3. 在 "Source" 下选择 "Deploy from a branch"
4. 选择 "main" 分支和 "/ (root)" 文件夹
5. 点击 "Save"

### 步骤4：访问网页
几分钟后，你的网页将在以下地址可用：
```
https://你的用户名.github.io/multi-agent-task-scheduler-patent/
```

## 方法2：Netlify 部署

### 步骤1：访问 Netlify
1. 访问 https://www.netlify.com/
2. 注册或登录账户

### 步骤2：部署网站
1. 点击 "Add new site" > "Deploy manually"
2. 将整个项目文件夹拖拽到部署区域
3. 等待部署完成

### 步骤3：获取网址
部署完成后，Netlify会提供一个免费的网址。

## 方法3：Vercel 部署

### 步骤1：访问 Vercel
1. 访问 https://vercel.com/
2. 使用GitHub账户登录

### 步骤2：导入项目
1. 点击 "New Project"
2. 导入你的GitHub仓库
3. 点击 "Deploy"

## 方法4：本地预览

如果你想在本地预览网页：

```bash
# 使用Python启动本地服务器
python3 -m http.server 8000

# 或者使用Node.js
npx serve .

# 然后访问 http://localhost:8000
```

## 🎯 推荐部署方案

**GitHub Pages** 是最推荐的方案，因为：
- ✅ 完全免费
- ✅ 自动SSL证书
- ✅ 与GitHub仓库集成
- ✅ 自动部署更新
- ✅ 专业的域名格式

部署完成后，你将拥有一个专业的专利技术展示网站！