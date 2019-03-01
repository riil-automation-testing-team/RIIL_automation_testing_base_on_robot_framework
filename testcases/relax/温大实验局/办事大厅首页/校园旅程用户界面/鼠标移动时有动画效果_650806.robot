*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
#Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
#2、所有子项关联服务：学生入学
*** Test Cases ***
鼠标移动时有动画效果_650806
    given 进入校园旅程用户页面
    when 将鼠标移动至校园旅程的入学阶段
    then 入学阶段的锚点高亮显示_下方显示入学阶段的全部服务事项
#    when 将鼠标移出入学阶段
#    then 高亮效果消失