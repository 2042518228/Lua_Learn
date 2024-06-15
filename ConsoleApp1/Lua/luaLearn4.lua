 ----------全局变量和局部变量-------
 ---没有加local 关键字的变量全是全局变量-----
 local a=1
 -------多脚本执行------
---require("脚本名")----
-- require("Text")
 ----require加载过一次过后不会在执行----
 -----脚本卸载----
print(package.loaded["Text"])---如果为true表示脚本被使用过，false没有被执行
 package.loaded["Text"]=nil--卸载脚本
 --------大G表----------
 --用来储存当前工程下的所有表
 for i, v in pairs(_G) do
  print(i..v)
 end
 --本地变量不会放入大G表中
 return a
 ---使用return返回一个本地变量可以被外部访问到
 --------多变量赋值------
 e,b,c=1,2,3
 ---和函数多返回值相同
 -----三木运算符使用and or 短路的特性---
 x=1
 y=2
 -------返回大数
 c=(x>y) and x or y