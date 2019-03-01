*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
校园旅程默认按照创建时间排序最先创建在最下方_663752
    given 进入校园旅程后台配置页面
    and 新建一级旅程_自动化测试教师旅程
    and 新建二级级旅程_学生办事_学生活动
    then 查看校园旅程页面排序_先创建的在最下方
