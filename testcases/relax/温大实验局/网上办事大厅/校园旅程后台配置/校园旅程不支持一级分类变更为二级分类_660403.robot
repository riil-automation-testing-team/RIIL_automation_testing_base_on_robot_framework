*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
校园旅程不支持一级分类变更为二级分类_660403
    given 进入校园旅程后台配置页面
    and 新建一级旅程_自动化测试教师旅程
    when 拖动学生分类至教师分类下方
    then 拖动失败_不支持拖动
