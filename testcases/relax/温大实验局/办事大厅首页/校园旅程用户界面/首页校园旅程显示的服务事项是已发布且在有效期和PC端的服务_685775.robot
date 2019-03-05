*** Settings ***
Library           Selenium2Library
Resource         ../../../../../keywords/relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#针对服务有效期，预置后台数据（测试用例685775）
#服务事项，授权给学生
#学生入学A已发布，且在有效期内，且授权终端为PC端+移动端
#学生入学B已发布，且在有效期内，且授权终端为PC端
#学生入学C已发布，在有效期内，授权终端为移动端
#学生入学D未发布
#学生入学E已发布，但不在有效期内
*** Test Cases ***
首页校园旅程显示的服务事项是已发布且在有效期和PC端的服务_685775
    given 进入校园旅程后台配置页面
    and 创建旅程_自动化测试服务有效期
    when 切到前端查看
    then 旅程CDE不显示服务事项