<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Install](#install)
- [Registry mirrors GFW](#registry-mirrors-gfw)
- [Env](#env)
- [Start](#start)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


### Install

` brew install docker`

### Registry mirrors GFW


前往网站 https://www.daocloud.io  或者or Aliyun Docker container service  

右键点击桌面顶栏的 docker 图标，选择 Preferences ，在 Advanced 标签下的 Registry mirrors 列表中添加镜像地址


### Env

```
mkdir ~/docker
touch docker-compose.yml
```

在`yml`文件中配置需要的环境，如 `mysql` `redis` `mongo` 等等


### Start

- `cd ~/docker`
- `docker-compose up -d`



