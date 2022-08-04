# deploy.sh
###
 # @Descripttion: 部署命令是 bash deploy.sh
 # @Author: dym
 # @Date: 2022-08-04 14:19:19
### 
# 错误时停止
set -e

# 打包
# npm run build

# 进入目标文件夹
cd build

# 提交到本地仓库

git init
git add -A
git commit -m 'deploy'

# 提交到 你的项目的 gh-pages 分支
git push -f git@github.com:nikkon18/nikki-blog.git master:gh-pages

cd -