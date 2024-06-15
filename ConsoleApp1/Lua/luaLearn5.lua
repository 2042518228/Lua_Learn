----------协程相关----------
----协程的创建
----方法一create
function fun1()
    local i=0
        i=i+1
        print(i)
end
a= coroutine.create(fun1);
----方法二wrap
b= coroutine.wrap(function() 
    print(2)
end);
-------方法一和二所创建的协程类型不同，一为Thread类型，二为函数类型
--------协程的启动-------
---方法一和二的协程启动方式不同
---方法一为resume(函数名或者函数变量)方法启动 方法二为变量加（）方式启动
coroutine.resume(a)
b()
--------协程的挂起-------coroutine.yield()方法启动
 fun2=function()
    local i=0
    while true do
        i=i+1
        print(i)
        print(coroutine.status(fun2Cor))
        coroutine.yield(i)
        ----coroutine.yield() 可以具有返回值 使用create方法创建的第一个返回值为bool类型的代表协程是否成功执行，第二个返回值为你传入的参数
        ----wrap 方法创建的协程没有bool返回值
    end
end
fun2Cor=coroutine.create(fun2)
coroutine.resume(fun2Cor)
-----协程的状态------ 使用coroutine.status(协程名称)查看
---running 正在运行
--suspended 暂停
--dead 失效
status1=coroutine.status(fun2Cor)
status2=coroutine.status(a)
print(status1)
print(status2)
------查看正在运行的协程
print(coroutine.running())---在协程方法内部调用，没有贼为nil,有会打印协程编号
