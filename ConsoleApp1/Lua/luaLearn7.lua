---------面向对象--------
--------封装-------
Table1={
    age=18,
    new=function(self)
     local instance={}
     setmetatable(instance,self)
     self.__index=self
     
     return instance
 end,
 ---------继承--------
    -- 类方法：className
 subclass = function(self, t)
     -- 创建一个新的全局表，以传入的字符串 t 为名称
     _G[t] = {}

     -- 获取刚刚创建的全局表
     local class = _G[t]
     -- 设置类的元表，使得访问类中不存在的键时，查找 Table1 中的同名键
     setmetatable(class, self)
     self.__index = self
    class.base=self
     -- 返回新创建的类
     return class
 end,
    ---------多态---------
posX=0,
    posY=0,
    Move=function(self)
        self.posX=self.posX+1
        self.posY=self.posY+1
        print(self.posX)
        print(self.posY)
    end
}

table1=Table1:new()
print(table1.age)
-- 使用 Table1 的 className 方法创建一个名为 Preson 的新类
 Table1:subclass("Preson")
preson=Preson:new()
Preson2 = Table1:subclass("Preson2")
preson3 =Preson:new()

-- 访问 Preson 类的 age 属性（继承自 Table1）
print(Preson.age)
preson.Move=function(self)
   self.base.Move(self)
    print("hhh")
end
preson:Move()
preson3:Move()