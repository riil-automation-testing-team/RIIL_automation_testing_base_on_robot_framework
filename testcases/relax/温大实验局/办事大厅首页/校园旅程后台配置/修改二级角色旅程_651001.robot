*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
修改二级校园旅程_651001
    given 进入校园旅程新建页面
    when 修改二级角色旅程的信息
    then 保存成功_校园旅程二级目录变更为修改后内容