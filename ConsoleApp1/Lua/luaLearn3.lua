-------类的声明------
Student={
    age=1,
    sex=false,
    Fun1=function()
        print("Fun1")
    end,
    Fun2=function(t)
        print("Fun2")
    end 
}
--------可以在外部声明成员变量-----
Student.id=123
Student.Fun3=function() 
end
function Student.fun3() 
    print("fun3")
end
function Student:Fun4()
    print(self.age)
end 
-------:调用和声明函数时会将本身作为一个参数传进去，声明函数时可以使用self关键字调用此参数----------
Student.Fun4(Student)
Student:Fun4()
-----------表的一些常用方法-----------
--------表的插入------
print("---------表的插入--------")
t1={{age=1,name="wwj"},{age=2,name="hhh"}}
t2={{age=3,name="ggg"},{age=4,name="kkk"}}
table.insert(t1,t2)
print(#t1)
print(t1[1].age)
print(t1[2].age)
print(t1[3][1].age)
print(t1[3][2].age)
--------删除指定元素--------
print("--------删除指定元素--------")
table.remove(t1)--删除最后一个元素
--------排序方法-------
t3={1,5,8,9,6}
------正序-------
table.sort(t3)
for _, v in pairs(t3) do
    print(v)
end
------倒序--------
table.sort(t3,function(a,b)
    if a > b then
        return true
    end
end )
for _, v in pairs(t3) do
    print(v)
end
---------拼接--------
print(table.concat(t3,";"))--第二个参数，为以什么符号拼接 9;8;6;5;1
