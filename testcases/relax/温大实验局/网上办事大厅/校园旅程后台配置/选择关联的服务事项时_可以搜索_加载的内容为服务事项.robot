*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
选择关联的服务事项时_可以搜索_加载的内容为服务事项
    given 进入校园旅程后台配置页面
    when 有搜索框_输入名称_可以搜索到相关的选择服务事项
    then 为所有申请服务和故障的一级服务没有故障的子服务
