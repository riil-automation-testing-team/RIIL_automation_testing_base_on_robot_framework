*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
新建和编辑旅程后_左侧的树不收起_且定位到当前操作的旅程上_679364
    given 进入校园旅程后台配置页面
    and 新建二级级旅程_学生活动
    then 默认选中学生活动
    when 修改学生活动为课外活动
    then 默认选中课外活动