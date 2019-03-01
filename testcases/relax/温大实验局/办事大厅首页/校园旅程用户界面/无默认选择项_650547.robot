*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
#Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
#2、所有子项关联服务：学生入学
*** Test Cases ***
无默认选择项_650547
    given 进入校园旅程用户页面
    then 无默认选择的服务事项