*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
存在多个角色分类时_只能存在一个开启状态_660305
    given 进入校园旅程后台配置页面
    and 新建三个旅程其中第一个为开启
    when 修改第二个旅程为开启
    then 查看只有第二个开启1和3旅程为未开启