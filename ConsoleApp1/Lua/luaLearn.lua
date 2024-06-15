-- 单行注释
-- 单行注释
--[[ 多行注释
print("hellow")
print("hellow")
print("hellow")]]
-- 变量--
--string boolen nil number
--nil 表示为null,其他类型与C#相同，lua变量与Python差不多不需要定义变量类型
--type(1)，用来查看变量类型，变量没有赋值则为nil,type本身是一个string类型.
--lua 索引从一开始
--------字符串操作相关------------
--获取字符串长度----#+"字符串" 注意中文一个字占三个长度
print(#"123")
----字符串换行打印----
print("123\n123")
print([[
啊啊啊
啦啦啦
]])
---字符串拼接-----
print("123".."54545")
print(string.format("anvvda%d",10))--和C语言的字符串拼接相同
---别的类型转换成字符串
print(tostring(123))
---字符串公共方法
--1 小写转大写 字符串方法不会改变原来的字符串
a="Hello,bCWorld!bC"
print(string.upper(a))
print(a)
--2.大写转小写
print(string.lower(a))
--3.反转字符串
print(string.reverse(a))
--4.字符串索引查找
print(string.find(a,"bC"))
--5.截取字符串
print(string.sub(a,1,3))
--6 字符串重复
print(string.rep(a,2))
--字符串修改
print(string.gsub(a,"bC",""))--返回修改次数
--字符转 <->ASCII
c=string.byte("abc",1)
print(c)
print(string.char(98))
----------运算符相关-------
------算术运算符------
----- + - * /  平方^
-----没有复合运算符+=
-----逻辑运算符 and or not 与或非
------条件运算符-----
----> < >= <= ~= 不等于
-------没有位运算符和三目运算符-------