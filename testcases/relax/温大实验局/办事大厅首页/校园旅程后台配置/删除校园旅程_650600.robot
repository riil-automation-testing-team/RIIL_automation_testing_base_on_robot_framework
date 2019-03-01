*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
删除校园旅程_650600
    given 进入校园旅程后台配置页面
    and 新建二级级旅程_学生活动
    then 先删除二级旅程才能删除一级旅程