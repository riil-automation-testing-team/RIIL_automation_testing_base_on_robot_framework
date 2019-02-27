*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
拖动旅程后_左侧树不收起_679473
    given 进入校园旅程后台配置页面
    and 新建二级旅程_行政办公_教务中心
    when 拖动教务中心到行政办公下边
    then 二级旅程仍为展开状态