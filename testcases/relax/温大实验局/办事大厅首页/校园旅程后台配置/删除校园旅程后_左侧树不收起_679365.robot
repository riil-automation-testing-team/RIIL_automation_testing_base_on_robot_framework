*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
删除校园旅程后_左侧树不收起_679365
    given 进入校园旅程后台配置页面
    and 新建二级级旅程_学生活动
    when 删除学生办事
    then 删除一个二级旅程后仍为展开状态