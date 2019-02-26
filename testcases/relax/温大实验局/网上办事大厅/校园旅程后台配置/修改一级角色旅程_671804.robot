*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
Test Teardown     关闭浏览器

*** Test Cases ***
修改一级校园旅程
    given 进入校园旅程新建页面
    when 修改一级角色旅程的信息
    then 保存成功_校园旅程二级目录的所属角色自动同步_与一级目录一致