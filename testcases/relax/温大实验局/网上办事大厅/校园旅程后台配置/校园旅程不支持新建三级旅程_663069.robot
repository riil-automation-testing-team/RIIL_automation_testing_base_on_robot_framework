*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
校园旅程不支持新建三级旅程_663069
    given 进入校园旅程后台配置页面
    and 新建二级级旅程_学生活动
    then 二级旅程上无法新建三级旅程_只有删除操作
