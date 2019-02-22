*** Settings ***
Library           Selenium2Library
Resource          ../../../../keywords/cheetah_business_keyword_resource.txt
Test Setup        登录猎豹  admin  admin123
#Test Teardown     关闭浏览器

*** Test Cases ***
添加IP分组_633799
    When 打开菜单项  系统配置  IP分组管理
    Then 添加IP分组
    When 编辑IP基本信息
    Then 校验头部基础信息