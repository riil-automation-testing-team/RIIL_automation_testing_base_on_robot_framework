*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
#2、所有子项关联服务：学生入学
*** Test Cases ***
登录用户角色不包含所属角色时_依旧显示校园旅程_660240
    given 进入校园旅程后台配置页面
    and 登录用户所属角色不包含学生
    when 查看前端页面
    then 仍然显示学生旅程
