# 说明

本主题基于`0cc4229121484605829ecec760a410b269e2428c`开发，请将ssr后端更新到最新版本。原因在于数据库结构的不同可能会造成一些异常。
需要注意的是，本主题从v1.0以后就不再支持赵大的原主题，数据库结构也有所改动，请慎重升级.

# 使用教程

### 全新安装
请参照赵大的安装教程，此处不再赘述。**v1.0以后版本的mstheme分支不再兼容赵大的主题**。

### 由ms主题的1.0及更低版本升级

**1、升级数据库**
依次执行`glzjin_34.sql`及以后的sql文件

**2、升级代码**
```
git pull izhangxm  mstheme
```
`izhangxm`是远程仓库地址，需要修改成你自己的地址



### 由赵大的`0cc4229121484605829ecec760a410b269e2428c`升级

由于数据库结构补边，所以主题完全兼容，各位小主们可以自由切换本主题与赵大主题。

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

# 如果你想兼容赵大的原主题，请切换到1.0
git reset --hard  v1.0
```

# 善后
- 修改`.config.php`文件的主题类型为`ms`。如果用户没有修改过主题将使用此默认主题，如果用户指定过，那么此处配置无效,需要将用户的主题设置为`ms`
- 删除`storage`下的`framework`文件夹,
- 刷新浏览器即可看到效果
