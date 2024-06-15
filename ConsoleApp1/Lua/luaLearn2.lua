------条件分支语句-----
--[[
a=11
 if a>10 and a==11 then
     print(a)
 elseif a<10 and a==9 then
     print(a)
 elseif a==10 then
     print(a)
 end
------循环语句-----
------for循环-----
for i = 10, 1,-1 do
    print(i)
end
---while循环---
while a>5 do
    print(a)
    a=a-1
end
----do while循环--
repeat
    print(a)
    a=a+1
until a>20]]
-----------函数------------
function F1(a)
    return a
end
a=F1(1)
print(a)
F2=F1(2)
print(F2)
F3=function(a,b,c)
    return a,b,c
end
print(F3(1,2,3))
function F4(x) 
    return function(y) 
        return x+y
    end
end
print(F4(1)(2))
-----无函数重载-----
-------数组------
---{1,2,nil,4} 如果数组中间有空，则数组会舍弃nil后的值
c={1,2,3,4}
cc={{1,2,3},{4,5,6}}
for i = 1, #c do
    print(c[i])
end
for i = 1, #cc do
    for j = 1, #cc[i] do
        print(cc[i][j])
    end
end
-------迭代器--------
-----ipairs---只能遍历连续的索引
for i, v in ipairs(c) do
    print("键"..i.."值"..v)
end
-------pairs-----可以遍历表中索引不连续的元素，及遍历所有元素
d={[0]=1,2,[-1]=3,4}
for i, v in pairs(d) do
    print("键"..i.."值"..v)
end
------字典的声明和遍历-------
a={["name"]="wwj",["age"]=10,["sex"]=false}
for i, v in pairs(a) do
    print(i,v)
end
