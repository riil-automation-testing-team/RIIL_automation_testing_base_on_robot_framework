*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
新建一级校园旅程
    given 进入校园旅程新建页面
    when 角色分类和所属角色必填项
