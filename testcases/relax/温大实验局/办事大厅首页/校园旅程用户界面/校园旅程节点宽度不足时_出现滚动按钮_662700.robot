*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
*** Test Cases ***
校园旅程节点宽度不足时_出现滚动按钮_662700
    given 进入校园旅程后台配置页面
    and 增加校园旅程多项服务
    when 切到前端查看
    then 校园旅程节点处有滚动按钮