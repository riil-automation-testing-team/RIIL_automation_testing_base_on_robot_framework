*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
搜索校园旅程_672535
    given 进入校园旅程后台配置页面
    and 新建二级旅程_行政办公_教务中心
    and 新建二级级旅程_学生活动
    when 搜索数据
    then 展示搜索结果_搜索出来的内容加粗显示