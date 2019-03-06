*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
二级旅程不可以拖动到其他一级角色旅程下_663650
    given 进入校园旅程后台配置页面
    and 新建一级旅程_带参       自动化测试教师旅程    教师
    and 新建二级角色分类学生分类关联的角色为学生
    when 拖动二级旅程到一级旅程位置
    then 拖动失败_不支持拖动
