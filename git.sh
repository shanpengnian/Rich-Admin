#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 全局配置
git config --global user.name "shanpengnian"
git config --global user.email "shanpengnian@163.com"

# 提交描述
msg='Rich Admin 1.0.0'

# 提交仓库地址

githubUrl=https://gitee.com/shanpengnian/Rich-Admin.git


git init
# git remote add origin git@github.com:shanpengnian/Sxpcwlkj-Doc.git
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:master # 推送到github master分支
