*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
一级旅程支持设置角色二级旅程继承一级旅程的角色_663490
    given 进入校园旅程后台配置页面
    when 新建一级旅程
    then 字段信息为角色分类名称_所属角色_以时间轴形式展示服务
    when 新建二级旅程
    then 字段信息为旅程名称_所属角色_只读继承上级角色分类的所属角色_图标_关联的服务事项