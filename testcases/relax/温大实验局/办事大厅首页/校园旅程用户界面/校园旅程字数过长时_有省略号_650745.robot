*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
*** Test Cases ***
校园旅程字数过长时_有省略号_650745
    given 进入校园旅程后台配置页面
    and 新建名字超长的二级旅程
    when 切到前端查看
    then 前端页面对应旅程出现省略号