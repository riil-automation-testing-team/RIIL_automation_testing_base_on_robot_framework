*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
二级旅程可以同时关联多个服务
    given 进入校园旅程后台配置页面
    #and 进入校园二级旅程
    when 同时选择多个故障服务和申请服务并保存
    #then 保存成功


