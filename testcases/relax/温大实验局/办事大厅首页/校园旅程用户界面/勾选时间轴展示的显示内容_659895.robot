*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
#Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
#2、所有子项关联服务：学生入学
*** Test Cases ***
勾选时间轴展示的显示内容_659895
    given 进入校园旅程用户页面
    when 校验入学阶段的全部服务事项
    #then 服务事项依次往下排_不会出现横向和纵向滚动