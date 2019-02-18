*** Settings ***
Library           Selenium2Library
Resource          ../../../../keywords/cheetah_business_keyword_resource.txt

*** Test Cases ***
添加IP分组_633799
    登录猎豹  admin  admin123
    打开菜单项  系统配置  IP分组管理
    新建
    输入基本信息