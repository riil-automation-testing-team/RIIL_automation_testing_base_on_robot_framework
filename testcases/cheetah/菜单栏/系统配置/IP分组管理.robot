*** Settings ***
Library           Selenium2Library
Resource          ../../../../keywords/cheetah_business_keyword_resource.txt

Suite Setup  登录猎豹  admin  admin123
Suite Teardown  关闭浏览器

*** Test Cases ***
添加IP分组_633799
    Given 打开菜单项  系统配置  IP分组管理
    When 添加合法IP分组名称和地址

编辑IP分组_633800
    when 添加IP分组
    Then 编辑IP基本信息

查看IP分组_633798
    when 点击已存在IP分组  Automation testing
    Then 校验头部基础信息

删除IP分组_634101
    When  删除已存在IP分组
    Then  验证IP分组不存在
