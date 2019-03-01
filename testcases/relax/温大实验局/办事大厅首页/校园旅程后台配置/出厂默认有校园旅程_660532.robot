*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
出厂默认有校园旅程_660532
    given 进入校园旅程后台配置页面
    then 为新生报道_入学_校园生活_实习生活_实习应聘_毕业离校_校友活动