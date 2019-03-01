*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
查看数据信息_数据信息回显和最新保存的一致_672528
    given 进入校园旅程后台配置页面
    and 新建二级旅程_行政办公_教务中心
    then 前端回显正常
