*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器

*** Test Cases ***
选择关联的服务事项时_可以搜索_加载的内容为服务事项_664633
    given 进入校园旅程后台配置页面
    and 新建一级旅程
    and 新建二级旅程
    when 修改一级旅程所属角色
    then 提示如您要变更所属角色需要重新选择二级旅程的服务事项
    when 保存修改
    then 且其二级旅程关联的服务事项清空且一级二级的所属角色都变更修改后的内容