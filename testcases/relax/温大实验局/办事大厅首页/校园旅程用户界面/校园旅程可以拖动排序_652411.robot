*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
*** Test Cases ***
校园旅程可以拖动排序_652411
    given 进入校园旅程后台配置页面
    and 按序新建二级旅程_行政办公_教务中心
    when 切到前端查看服务排序
    and 拖动教务中心到行政办公下边_前端展示
    and 切到前端查看
    then 前端页面对应旅程顺序改变