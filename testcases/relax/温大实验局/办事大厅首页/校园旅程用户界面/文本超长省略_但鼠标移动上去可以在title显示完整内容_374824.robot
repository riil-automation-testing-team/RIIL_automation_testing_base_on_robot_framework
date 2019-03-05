*** Settings ***
Library           Selenium2Library
Resource          relax_business_keyword_resource.txt
Test Setup        打开浏览器
#Test Teardown     关闭浏览器
#说明：执行此用例时，默认后端是配置好的
#1、校园旅程勾选时间轴
*** Test Cases ***
文本超长省略_但鼠标移动上去可以在title显示完整内容_374824
    given 进入校园旅程后台配置页面
    and 新建名字超长的二级旅程
    when 切到前端查看
    then 超长标题显示正常