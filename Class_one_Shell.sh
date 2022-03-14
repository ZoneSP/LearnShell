#!/bin/bash

:<<!
这就是批量注释
!
echo "HelloWorld"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

:<<!
1. 定义变量
!
var_1=123
var_2='abc'
var_3="def"


:<<!
2. 使用变量
!
echo "2. 使用变量 的输出："
echo "$var_1"
echo ${var_2}
echo " "


:<<!
3. ''和""的区别
双引号""可以接受${var}的方式进行变量拼接，但是单引号''只是单纯的字符串拼接
!
echo "3. 单引号和双引号区别 的输出："
var_4="${var_2}aaaa"
echo ${var_4}

var_5='${var_2}aaaa'
echo "${var_5}"
echo " "


:<<!
4. 将Shell命令的结果赋值给变量：
var=`pwd`
var=${pwd}
!
echo "将Shell命令的结果赋值给变量："
var_6=`pwd`
echo "$var_6"
var_6=$(ls -h)
echo ${var_6}
echo " "


:<<!
5. 删除变量：
!
unset var_6
echo "删除var_6后，输出为："
echo ${var_6}


:<<!
6. 特殊变量：
$0：当前脚本的文件名
$n：(n >= 1) 传输给脚本或函数的参数，n是一个数字，表示是第几个参数，如第一个参数是$1，第二个参数是$2
$#：传递给脚本或函数的参数个数
$*：传递给脚本或函数的所有参数
$@：传递给脚本或函数的所有参数。在被双引号括起来前，$@和$*没任何不同，但是被括起来后，$*会将导入参数看做一个整体
$?：上个命令退出的状态或者获取函数的返回值
$$：当前进程的ID，对于Shell脚本，就是这些脚本所在进程ID
!
echo "\$0 当前脚本的文件名是：$0"
echo "\$n 传递给脚本的第一个参数是：$1   传递给脚本的第二个参数是：$2"
echo "\$# 当前有$#个参数传入该脚本"
echo "\$* 显示所有传入参数：$*"
echo "\$@ 显示所有传入参数：$@"
echo "\$$ 当前进程的ID是：$$"
echo "\$? 此命令请在Shell进程结束时使用，查询返回值"
echo " "


:<<!
7. 字符串拼接
!
var_7='HelloWorld'
var_7=${var_7}aaaa
echo ${var_7}


:<<!
8. 读取从键盘输入的数据
!
read -p "input var_8：" var_8
echo "var_8的值为：${var_8}"
echo " "


:<<!
9. 对整数进行数学运算(())
!
read -p "Please input a：" a
read -p "Please input b：" b
var_9=$((a+b))
echo "a+b的值为：${var_9}"
echo " "


:<<!
10. 逻辑与和逻辑或
前序条件：检测某个条件是否成立   test expression 和 [expression]

command1 && command2   ：逻辑与，当command1为真时，再执行command2

command1 || command2   ：逻辑或，当command1为假的时候，再执行command2
!
echo "var_10的值为：12"
var_10=12
echo "var_11的值为：12"
var_11=12
test $var_10 -eq $var_11 && echo "var_10 == var_11"
echo " "

echo "var_10的值为：12"
var_10=12
echo "var_11的值为：78"
var_11=78
test $var_10 -eq $var_11 || echo "var_10 != var_11"
echo " "



:<<!
11. 检测某个条件是否成立：
-eq：判断数值是否相等
-ne：判断数值是否不等
-gt：判断数值是否大于
-lt：判断数值是否小于
-ge：判断数值是否大于等于
-le：判断数值是否小于等于
-z str：判断字符串str是否为空
-n str：判断字符串str是否不为空
=和==：判断字符串是否相等
-d filename：判断文件路径是否存在，并且是目录文件
-f filename：判断文件是否存在，且是普通文件
!
var_12="HelloWorld"
var_13=""

test -n ${var_12} && echo "var_12非空！内容为：${var_12}"
test -z ${var_13} && echo "var_13是空的！"

test -d "/home/zoey" && echo "目录/home/zoey存在"
test -f "/home/zoey/examples.desktop" && echo "文件 examples.desktop 存在"
echo " "



:<<!
12. 管道
command1 | command2
将command1的结果传到command2中，command1的结果必须是真
!


:<<!
13. if   if..else   if..elif..else
!










:<<!
终末返回值10
!
exit 10




