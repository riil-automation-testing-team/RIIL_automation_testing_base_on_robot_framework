*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
*** Test Cases ***
当所有的一级角色旅程都没有开启以时间轴展示时_首页的校园旅程消失_其他内容上移_660315
    given 进入校园旅程后台配置页面
    and 所有旅程关闭开启以时间轴展示
    then 首页的校园旅程消失_其他内容上移