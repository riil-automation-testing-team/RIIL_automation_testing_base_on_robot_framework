*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
新建二级级校园旅程
    given 进入校园旅程新建页面
    and 新建二级角色分类学生分类关联的角色为学生
