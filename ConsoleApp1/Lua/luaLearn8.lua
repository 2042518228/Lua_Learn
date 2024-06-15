-------lua自带库---------
-------时间--------
time=os.date("*t")
--[[
 - `year`: 年份（如 `2024`）
     - `month`: 月份（数值形式，1~12）
     - `day`: 日期（1~31）
     - `hour`: 小时（0~23）
     - `min`: 分钟（0~59）
     - `sec`: 秒（0~59）
     - `wday`: 星期几（数值形式，1表示星期天，2表示星期一，以此类推）
     - `yday`: 一年中的第几天（1~366）
     - `isdst`: 是否为夏令时（布尔值，`true`表示当前处于夏令时，`false`则表示不是）
]]
---------数学运算--------
print(math.abs(-1)) -- 绝对值计算 
print(math.deg(math.pi)) -- 弧度转角度 
print(math.cos(math.pi)) -- 余弦值计算 
print(math.sqrt(4)) -- 平方根计算 
print(math.floor(1.3)) -- 向下取整 
print(math.ceil(1.3)) -- 向上取整 
print(math.modf(1.3)) -- 分数与整数部分分离 
print(math.min(1.3,2)) -- 求最小值
--设置随机数种子
math.randomseed(os.time())
math.random(1,10000)
print(math.random(1,10)) -- 生成指定范围内的随机数
-------路径-----------
print(package.path)
--------lua 垃圾回收-------
collectgarbage("count")--返回当前lua使用内存的近似值
collectgarbage("collect")--立即执行一次完整的垃圾回收