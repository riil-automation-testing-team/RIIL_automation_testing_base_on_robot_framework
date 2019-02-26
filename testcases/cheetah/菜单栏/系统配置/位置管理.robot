*** Settings ***
Library           Selenium2Library
Resource          ../../../../keywords/cheetah_business_keyword_resource.txt

Suite Setup  登录猎豹  admin  admin123
Suite Teardown  关闭浏览器

*** Test Cases ***
添加位置_634095
    Given 打开菜单项  系统配置  位置管理
    When 添加位置名称和上级位置

查看位置_634094
    when 展开位置列表
    and 点击已存在位置
    Then 校验头部基础信息

编辑位置_633800
#    Given 打开子菜单项  位置管理
    Given 打开菜单项  系统配置  位置管理
    when 添加位置
    Then 编辑位置基本信息

删除位置_634097
    When 删除已存在位置
    Then 验证不存在