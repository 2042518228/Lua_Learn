---------元表的概念--------
--任何表变量都可以有自己的元表--相当于父类一样
---元表的一些方法--
--[[rawset()----跳过__index只在子表中查找
rawget()----跳过__newindex不会将新的元素赋值到__newindex中
getmetatable()---获取一个表的元表]]
--当我们对子表进行一些操作时，会执行元表中一些特点的操作
-----元表的设置-----
meta={
    __tostring=function(t) 
        return t.age
    end,
    __call=function(t,b) 
        print(t.name..b)
    end,
    __add=function(a,b) 
        return a.age+b.age
    end,
    __sub=function(a,b)
        return a.age-b.age
    end,
    __mod=function(a,b)
        return a.age%b.age
    end,
    __index={sex=true},
    __newindex={id}
}
myTable={age=18,name="wwj"}
myTable2={age=18,name="wwj"}
setmetatable(myTable,meta)
setmetatable(myTable2,meta)
------特殊操作__tostring 对表进行打印操作时会执行
print(myTable)
------特殊操作__call 将表作为函数进行操作时会触发
myTable(1)
------特殊操作__add 将表+相加时会触发
print(myTable+myTable2)
------特殊操作__sub 将表-相减时会触发
------特殊操作__mul 将表*相乘时会触发
------特殊操作__div 将表/相除时会触发
------特殊操作__mod 将表相%取余时会触发
print(myTable%myTable2)
------特殊操作__pow 将表^平方时会触发
------特殊操作__eq 将表==平方时会触发
c=myTable==myTable2 --只有两个表的元表相等时为true，但好像不会触发__eq
------特殊操作__lt 将表<平方时会触发
------特殊操作__le 将表<=平方时会触发----没有>和>=
------特殊操作__concat 将表..时会触发
---------特殊操作__index和__newindex-------
-------__index------ 当在子表中找不到一个元素时会去元表的__index中去查找，如果元表找不到则继续往上找
-------__newindex------ 当在子表中定义一个新的元素时会将值赋值到元表的__newindex中去
print(myTable.sex)
myTable.id=10
print(meta.__newindex.id)
