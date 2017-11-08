# 说明

本主题基于`0cc4229121484605829ecec760a410b269e2428c`开发，请将ssr后端更新到最新版本。

# 使用教程

首先确认自己的所在的分支是否有未提交的文件
```
git status
```

如果有那就提交下吧。如果不想提交，请参考[7.3 Git 工具 - 储藏与清理](https://git-scm.com/book/zh/v2/Git-%E5%B7%A5%E5%85%B7-%E5%82%A8%E8%97%8F%E4%B8%8E%E6%B8%85%E7%90%86)
```
#提交自己的工作
git commit -a -m 'some comment'
```
然后执行以下命令
```
# 进入魔改面板目录
cd ss-panel-v3-mod/

# 添加远程分支
git remote add izhangxm https://github.com/izhangxm/ss-panel-v3-mod.git 

# 检出
git fetch izhangxm

# 切换分支
git checkout -b mstheme --track izhangxm/mstheme
```

# 善后
- 修改`.config.php`文件的主题类型为`ms`。如果用户没有修改过主题将使用此默认主题，如果用户指定过，那么此处配置无效,需要将用户的主题设置为`ms`
- 删除`storage`下的`framework`文件夹,
- 刷新浏览器即可看到效果
