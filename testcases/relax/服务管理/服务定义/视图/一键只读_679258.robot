*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
新建一级校园旅程
    given 进入后台服务定义页面
    and 新建申请表单
#    when 一键设置全部只读
#    then 设置成功
#    when 保存视图
#    then 保存成功



